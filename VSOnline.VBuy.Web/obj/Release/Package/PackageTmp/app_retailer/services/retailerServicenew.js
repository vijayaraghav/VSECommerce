app_retailer.service('retailerServiceNew', function () {

    var endPointLanding = '/VBuy/api/Landing';
    var endPoint = '/VBuy/api/Login';

    this.RegisterRetailer = function ($scope, $http, retailerDTO)
    {

        var config = {
            headers: { "CommandType": "RegisterRetailer" }
        };
        return $http.post(endPoint + '/RegisterRetailer', retailerDTO, config)
            .then(function (response) {
                return response;
            });
    }

    this.getAppData = function($http)
    {
        var config = {
            headers: { "CommandType": "GetApplicationData" }
        };
        return $http.get(endPointLanding + '/GetApplicationData', config)
            .then(function (response) {
                return response;
            });

    }
});