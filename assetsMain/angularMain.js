const myApp = angular.module('appComponent', ['ui.router']);

myApp.config(function($stateProvider){

	let states = [
		{
				name:	'index'
			,	url:	'/'
			,	component:	'index'
		},
		{
				name:	'ingreso'
			,	url:	'/ingreso'
			,	component: 'ingreso'
			,	resolve: {
					ingreso: function(MainService) {
					return MainService.validarIngreso();
					}
				}
		}
		,{
				name:	'directorio'
			,	url:	'/directorio'
			,	component: 'directorio'
			,	resolve:{
					directorio: function(MainService){
						return MainService.ListarUsuarios();
					}
				}
		}
	]
		// Loop over the state definitions and register them
	states.forEach(function(state) {
		$stateProvider.state(state);
	})
});

myApp.run(function($http, $uiRouter) {
//   window['ui-router-visualizer'].visualizer($uiRouter);
//   $http.get('data/people.json', { cache: true });
});

myApp.component('index', {
		templateUrl: 'sesion/inicio.html' 
	,	controller: CtrlIndex
})
myApp.component('ingreso', { 
	templateUrl: 'sesion/ingreso.html' 
	,	controller: Ctrlingreso
});
myApp.component('directorio', { 
		bindings: { directorio: '<' }
	,	templateUrl: 'directorio/directorio.html' 
	,	controller: Ctrldirectorio,
	// [
	// 	// 'MainService',
	// 	Ctrldirectorio
	// ]
});
myApp.service('MainService', function($http){
	let service = {
		validarIngreso: () => {
			return console.log('Ejecución de servicio validarIngreso')
			// return $http({
			//             method:'POST',
			//             url:'data/includes/sql/acceso/login.php',
			//             header:{
			//                 'Content-Type': undefined
			//             },
			//             data:{ control : "SI" } 
			//         }).success(function(respuesta){
			//             return $scope.ingresoRes = respuesta;
			//         }).error(function(err){
			//             return console.log("Error: "+err);
			//         });
		} ,
		ListarUsuarios: () => {
			// return console.log('Ejecución de servicio ListarUsuarios')
			return $http({
			            method:'POST',
			            url:'data/includes/sql/usuarios/listar_usuarios.php',
			            header:{
			                'Content-Type': undefined
			            },
			            data:{ control : "SI" } 
			        }).success(function(respuesta){
			            return respuesta;
			        }).error(function(err){
			            return console.log("Error: "+err);
			        });
		}
	}
	return service;
});


// ==================================
// FUNCIONES QUE REEMPLAZAN A LOS CONTROLADORES
// Estos se usan exclusivamente con cada componente
// ==================================
function CtrlIndex(){
//   console.log('CtrlIndex')
};

function Ctrlingreso(){
//   console.log('Ctrlingreso')
};

function Ctrldirectorio(){
	let 
		  vm = this , 
		dir = vm.directorio
	;
	vm.message = 'Estoy en directorio';
	vm.back = 'index';

  	// console.log(vm)
  	// console.log(dir)
//   var usualisDirectorio = MainService.ListarUsuarios()
//   console.log(usualisDirectorio.$$state)
};