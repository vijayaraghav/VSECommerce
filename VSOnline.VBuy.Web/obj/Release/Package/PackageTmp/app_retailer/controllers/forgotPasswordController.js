app_retailer.controller('ForgotPasswordController', ['$scope', '$http', '$location', '$rootScope', 'passwordService',
    function ($scope, $http, $location, $rootScope, passwordService) {
        $scope.message = '';
        $scope.successfullySent = false;

        $scope.SendForgetPassword = function () {
            passwordService.forgotPassword($scope, $http, $scope.Email)
             .then(function (response) {
                 if (response.data == false) {
                     $scope.message = 'Sorry. Unable to identify user. Please verify provided email id'
                     $scope.successfullySent = false
                 }
                 else
                 {
                     $scope.message = 'A link has been sent to your mail to reset the password'
                     $scope.successfullySent = true;
                 }
             });
        };
        
         
}]);