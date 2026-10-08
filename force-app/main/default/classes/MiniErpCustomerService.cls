public class MiniErpCustomerService {

    public static List<MiniErpCustomer> getCustomers() {

        Http http = new Http();

        HttpRequest request = new HttpRequest();

        request.setEndpoint('https://brick-yesterday-slacker.ngrok-free.dev/api/customers');

        request.setMethod('GET');

        HttpResponse response = http.send(request);

        return (List<MiniErpCustomer>) JSON.deserialize(
        response.getBody(),
        List<MiniErpCustomer>.class
);
    }
}