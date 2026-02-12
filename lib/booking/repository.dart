import 'package:lapponia_travel_frontend/common/backend_router.dart';
import 'package:pocketbase/pocketbase.dart';

class BookingHomeRepository {
  final pb = PocketBase(BackendRouter.route);

  Future<String> getImageUrl(String id) async {
    final record = await pb.collection("images").getOne(id);
    final firstFileName = record.getListValue<String>("file")[0];
    final uri = pb.files.getURL(record, firstFileName, download: true);
    return uri.toString();
  }

  static String get lapponiaClassicaDescription {
    return "Creiamo insieme la tua vacanza perfetta in Lapponia. Da esperienze singole a pacchetti completi, massima flessibilità di date, attività e budget.\n\nIdeale per: famiglie, coppie e gruppi che cercano la magia dell’Artico con la comodità dei servizi, dei ristoranti e dei negozi di Levi sempre a portata di mano.";
  }

  static String get vacanzeSpecialiDescription {
    return "Esperienze uniche in piccoli gruppi per chi vuole uscire dalla civiltà, staccare dal mondo e vivere immerso nella natura incontaminata. Itinerari fissi, tutto incluso e zero pensieri.\n\nIdeale per: chi vuole “spegnere il cellulare”, amanti del silenzio, della natura selvaggia e avventurieri in cerca di un’esperienza autentica e profonda.";
  }
}
