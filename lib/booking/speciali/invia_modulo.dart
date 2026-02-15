import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:lapponia_travel_frontend/booking/speciali/models.dart';
import 'package:lapponia_travel_frontend/common/backend_router.dart';
import 'package:lapponia_travel_frontend/common/error_handling.dart';

class ModuloSpeciali extends StatelessWidget {
  final VacanzaSpeciale vacanza;
  const ModuloSpeciali({super.key, required this.vacanza});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return AlertDialog.adaptive(
      title: Text(vacanza.title),
      content: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Inserisci qui i tuoi dettagli e ti ricontatterò a breve. Tranquillo, non mordo. ;)",
            ),
            FormBuilder(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FormBuilderTextField(
                    name: "nome",
                    decoration: InputDecoration(labelText: "Nome completo"),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: "Campo obbligatorio",
                      ),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: "email",
                    decoration: InputDecoration(labelText: "Indirizzo email"),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: "Campo obbligatorio",
                      ),
                      FormBuilderValidators.email(
                        errorText: "Inserisci un indirizzo email valido",
                      ),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: "partecipanti",
                    decoration: InputDecoration(
                      labelText: "Numero di partecipanti",
                    ),
                    keyboardType: TextInputType.number,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: "Campo obbligatorio",
                      ),
                      FormBuilderValidators.numeric(
                        errorText: "Inserisci un numero",
                      ),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: "dettagli",
                    decoration: InputDecoration(
                      labelText: "Dettagli",
                      hint: Text(
                        "Spiega più in dettaglio chi sei, che avventura cerchi, se hai domande o altro.",
                      ),
                    ),
                    minLines: 5,
                    maxLines: 5,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: "Campo obbligatorio",
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Row(
              spacing: 5,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final isValid = formKey.currentState?.saveAndValidate();
                    if (isValid == null || !isValid) return;
                    final values = formKey.currentState!.value;
                    try {
                      final encoder = JsonEncoder.withIndent("  ");
                      final prettyValues = encoder.convert(values);
                      await BackendRouter.post(
                        "sendemailadmin",
                        {'Content-Type': 'application/json'},
                        _buildRequestBody(
                          "info@lapponiatravel.com",
                          values["email"],
                          vacanza.title,
                          prettyValues,
                        ),
                      );
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          confirmationSnackbar(
                            context,
                            "Richiesta inviata con successo",
                          ),
                        );
                      }
                      if (context.mounted) context.pop();
                    } catch (e, s) {
                      BasicLogger().error(
                        "Couldn't send email",
                        error: e,
                        stackTrace: s,
                      );
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          errorSnackBar(
                            context,
                            "Impossibile inviare la richiesta",
                          ),
                        );
                      }
                    }
                  },
                  child: Text("Invia"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Cancella", style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _buildRequestBody(
    String to,
    String replyTo,
    String tourName,
    String content,
  ) {
    return jsonEncode({
      "to": to,
      "replyTo": replyTo,
      "subject": "Nuova richiesta: $tourName",
      "content": content,
    });
  }
}
