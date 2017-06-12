const myApp = angular.module('appComponent', ['ui.router']);

myApp
.config(function($stateProvider){

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
		,{ 
				name: 'directorio.personaDetail'
			,	url: '/{personId}'
			,	component: 'person'
			,	resolve: {
					person: (people, $stateParams) => {
						return console.log(people, $stateParams)
						// return people.find(function(person) { 
						// 	return person.id === $stateParams.personId;
						// });
					}
				}
		}
	]
	// Loop over the state definitions and register them
	states.forEach(function(state) {
		$stateProvider.state(state);
	})
})

.run(function($http, $uiRouter) {
//   window['ui-router-visualizer'].visualizer($uiRouter);
//   $http.get('data/people.json', { cache: true });
})

.component('index', {
		templateUrl: 'sesion/inicio.html' 
	,	controller: CtrlIndex
})
.component('ingreso', { 
	templateUrl: 'sesion/ingreso.html' 
	,	controller: Ctrlingreso
})
.component('directorio', { 
		bindings: { directorio: '<' }
	,	templateUrl: 'directorio/directorio.html' 
	,	controller: Ctrldirectorio
})
.component('person', {
	bindings: { person: '<' },
	template: '<div>Name: </div>'
})
.service('MainService', function($http){
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
		} ,
		getPerson: (id) => {
			function personMatchesParam(person) {
				return person.id === id;
			}
			return service.ListarUsuarios().then((people) => {
				return people.find(personMatchesParam)
			});
		}
	}
	return service;
})


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

function Ctrldirectorio(MainService){
	let 
		vm = this , 
		dir = vm.directorio
		, a = MainService.ListarUsuarios()
	;
	vm.message = 'Estoy en directorio';
	vm.back = 'index';
  	console.log(a);
  	// console.log(vm)
  	// console.log(dir.data)
	//   var usualisDirectorio = MainService.ListarUsuarios()
	//   console.log(usualisDirectorio.$$state)
};