//function register()
//{ 
//    var phone = document.getElementById('phone').value;
//    var fname = document.getElementById('fname').value;
//    var lname = document.getElementById('lname').value;
//    var email = document.getElementById('email').value;
//    
//    var phoneno = /^\(?([0-9]{4})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
// 
//    if(phone=="" || fname =="" || lname="" || email==""){
//        alert("Please fill out this field");
//        return false;
//    }else{
//       if(phone.match(phoneno)){
//            return true;   
//       }
//       else{
//            alert("Please enter valid Indonesian phone number");
//            return false;
//       } 
//    }
//    
//}

var svr ="../mitrais/mitrais-db"

var myApp = angular.module('myApp', ['ngRoute']);

myApp.service('currentEvent', function() {			
    var data = {};
	var user = {};
			
	return {
	    getData: function() {
            return data;
        },
        setData: function(obj) {
            data = obj;
		}
	}
});

// configure our routes
myApp.config(function($routeProvider) {
    $routeProvider
    // route for register page
    .when('/', {
        templateUrl : 'pages/register.html',
        controller  : 'mainController'     
    })
    // route for login page
    .when('/login', {
        templateUrl : 'pages/login.html',
        controller  : 'loginController'
    })
            
});

myApp.controller('mainController', function($scope,$http,$route,$location) {
    $scope.registerSubmit=function(){
        
        
        
        var parmData    =   "phoneNumber=" + $scope.phoneNumber + 
                            "&firstName=" + $scope.firstName + 
                            "&lastName=" + $scope.lastName + 
                            "&month=" + $scope.month +
                            "&date=" + $scope.date +
                            "&year=" + $scope.year +
                            "&gender=" + $scope.gender +  
                            "&email=" + $scope.email;
        
       
        $http.get(svr + "/addUser.php?"+ parmData).then(function(response){
            if($scope.SaveForm.$valid) {  
                return true;
            }  
            else  
            {  
                var s = "";
                s = s + '<div class="alert alert-danger" role="alert">Oops, sorry! Please check the data you entered </div>';
                return false;
            }  

        });
        document.getElementById('btnLogin').style.visibility='visible';
        
    }
    
});

myApp.controller('loginController', function($scope,$http,$route,$location) {

    
});


