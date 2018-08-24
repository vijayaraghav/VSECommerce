app_retailer.directive('compareTo', function () {
    return {
        require: "ngModel",
        scope: {
            otherModelValue: "=compareTo"
        },
        link: function (scope, element, attributes, ngModel) {

            ngModel.$validators.compareTo = function (modelValue) {
                return modelValue == scope.otherModelValue;
            };

            scope.$watch("otherModelValue", function () {
                ngModel.$validate();
            });
        }
    };
});


app_retailer.directive('fixedTableHeaders', ['$timeout', function($timeout) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            $timeout(function () {
        
                container = jQuery(element).parentsUntil(attrs.fixedTableHeaders);
                jQuery(element).stickyTableHeaders({ scrollableArea: container, "fixedOffset": 2 });

            }, 0);
        }
    };
}]);