app.service('storesService', function () {

    var endPoint = '/VBuy/api/Stores';

    this.getStoreInfo = function ($http, storeId)
    {

        return $http.get(endPoint + '/GetStoreInfo/' + storeId);
    }   

    this.getFilter = function ($http, storeId, productId) {
        var config = {
            params: { storeId: storeId, productId: productId }
        };
        return $http.get(endPoint + '/GetStoresProductFilter', config);
    }

    this.getStoreProducts = function ($scope, $http) {
        $scope.filters.storeId = $scope.StoreInfo.StoreId;
        $scope.filters.selectedBranchId = $scope.selectedBranchId
        var config = {
            params: $scope.filters
        };
        return $http.get(endPoint + '/GetStoreProducts', config);
    }

    this.getRatings = function ($scope, $http, branchId) {
        var config = {
            params: { branchId: branchId }
        };
        return $http.get(endPoint + '/GetBranchRating/', config);
    }

    this.updateRatings = function ($scope, $http, userName, branchId, rating) {
        var config = {
            params: { branchId: branchId, rating: rating, userName: userName }
        };
        return $http.get(endPoint + '/UpdateBranchRating/', config);
    }
});