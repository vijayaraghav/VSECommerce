app.service('categoryService', function () {

    var endPoint = '/VBuy/api/Admin';

    this.getAllCategory = function ($scope, $http) {
        var config = {
            headers: { "CommandType": "GetAllCategory" }
        };
        $scope.app = {};
        $http.get(endPoint, config)
         .success(function (data, status, headers) {
             $scope.app.category = data;             
         }).error(function () {
             $scope.app.error = 'something\'s broken';
         });;
        return $scope.app.category;
    };


});