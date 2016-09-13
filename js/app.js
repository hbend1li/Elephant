/**
 * Created by hbendali on 30/04/16.
 */
var myElephant = angular

.module('myElephant', ['ngRoute'])

.config(['$routeProvider',
    function($routeProvider) {
        $routeProvider
            .when('/main', {
                templateUrl: 'templates/main.html'
            })
            .when('/exo/:id', {
                templateUrl: 'templates/exercice.html',
                controller: 'view_exController'
            })
            .when('/add_exo', {
                templateUrl: 'templates/insert.html',
                controller: 'insController'
            })
            .when('/inscription', {
                templateUrl: 'templates/inscription.html'
            })
            .when('/profile', {
                templateUrl: 'templates/profile.html'
            })
            .when('/guestbook', {
                templateUrl: 'templates/guestbook.html'
            })
            .when('/thx', {
                templateUrl: 'templates/thx.html'
            })
            .when('/logout', {
                templateUrl: '?logout'
            })
            .when('/about', {
                templateUrl: 'templates/about.html'
            })

            .otherwise('/main');
    }
])

// main page - list of all exercice
.controller('mainController', function ($scope, $http, $location) {
    
    $http.get('controller/list.php?exo')
        .then(function(res){
            $scope.depo = res.data;
            console.log( 'exo' );
            console.log( res.data );
        });

    $scope.go = function(exo_id){
        $location.path( '/exo/'+exo_id );
        console.log( 'controller/article.php?id='+exo_id );
    }

    $scope.showConfirm = function(ev) {
        // Appending dialog to document.body to cover sidenav in docs app
        var confirm = $mdDialog.confirm()
              .title('Would you like to delete your debt?')
              .textContent('All of the banks have agreed to forgive you your debts.')
              .ariaLabel('Lucky day')
              .targetEvent(ev)
              .ok('Please do it!')
              .cancel('Sounds like a scam');
        $mdDialog.show(confirm).then(function() {
          $scope.status = 'You decided to get rid of your debt.';
        }, function() {
          $scope.status = 'You decided to keep your debt.';
        });
    };
})

// new exercice 
.controller('insController', function ($scope, $http, $location) {
     
    $http.get('controller/list.php?mat')
        .then(function(res){
            $scope.matiere = res.data;
            console.log( 'mat' );
            console.log( res.data );
        });
})

// set profile 
.controller('profileController', function ($scope, $http, $location) {
     
    $http.get('controller/list.php?profile')
        .then(function(res){
            $scope.profile = res.data[0];
            console.log( 'profile' );
            console.log( res.data[0] );
        });
})

// view exercice 

.controller('view_exController', function ($scope, $http, $location, $routeParams) {
    $scope.exoId = $routeParams.id;
/*
    $scope.niveau = [ 
        { id: 00, title:'التكوين ما قبل التدريس'},
        { id: 10, title:'الإبتدائي'},
        { id: 11, title:'الإبتدائي السنة 1'},
        { id: 12, title:'الإبتدائي السنة 2'},
        { id: 13, title:'الإبتدائي السنة 3'},
        { id: 14, title:'الإبتدائي السنة 4'},
        { id: 15, title:'الإبتدائي السنة 5'},
        { id: 20, title:'التعليم المتوسط'},
        { id: 21, title:'التعليم المتوسط 1'},
        { id: 22, title:'التعليم المتوسط 2'},
        { id: 23, title:'التعليم المتوسط 3'},
        { id: 24, title:'التعليم المتوسط 4'},
        { id: 40, title:'التعليم الثنوي'},
        { id: 41, title:'التعليم الثنوي 1'},
        { id: 42, title:'التعليم الثنوي 2'},
        { id: 43, title:'التعليم الثنوي 3'},
        { id: 50, title:'التعليم الجامعي'},
        { id: 60, title:'التكوين المهني'}
    ];
*/

    $http.get('controller/list.php?exo='+ $scope.exoId)
        .then(function(res){
            
            // replace res.data[0].niveau = 10 to res.data[0].niveau = الإبتدائي
//            res.data[0].niveau = $scope.niveau.find(function(w){return w.id === res.data[0].niveau ; }).title;
            
            $scope.exo = res.data[0];
            console.log( 'exo' );
            console.log( res.data[0] );
        });
})




            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            



function callAjax(url, target){

    var loader = document.getElementsByClassName('loader');
    if (loader > 0) {
        loader.style.visibility = "visible";
    }

    var xmlhttp;
    // compatible with IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
            document.getElementById(target).innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    
}

function select_lang(ln) {
    document.getElementById("frm").style.display = 'block';
    Array.filter( document.getElementsByClassName('ar'), function(elem){ elem.style.display = 'none'; });
    Array.filter( document.getElementsByClassName('fr'), function(elem){ elem.style.display = 'none'; });
    Array.filter( document.getElementsByClassName('en'), function(elem){ elem.style.display = 'none'; });
    Array.filter( document.getElementsByClassName( ln ), function(elem){ elem.style.display = 'block';});
}

function printDiv(divName) {
    var printContents = "<div style='direction: rtl;'>" + document.getElementById(divName).innerHTML + "</div>";
    var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContents;
    window.print();
    document.body.innerHTML = originalContents;
}