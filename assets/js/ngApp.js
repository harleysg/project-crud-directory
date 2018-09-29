const myApp = angular.module('appComponent', ['ui.router']);

myApp
	.config(function ($stateProvider, $urlRouterProvider){

	let states = [
		{
				name:	'login'
			,	url:	'/'
			,	component:	'login'
		},
		{
				name:	'home'
			,	url:	'/home'
			,	component: 'home'
			,	resolve: {
					home: function(MainService) {
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
						return MainService.getAllPeople();
					}
				}
		}
		,{ 
				name: 'directorio.personaDetail'
			,	url: '/:personId'
			,	component: 'person'
			,	resolve: {
					person: function (MainService, $stateParams) {
						return MainService.getPerson($stateParams.personId);
					}
					// person: (people, $stateParams) => {
					// 	// return console.log($stateParams)
					// 	return people.find(function(person) { 
					// 		return person.id === $stateParams.personId;
					// 	});
					// }
				}
		}
	]
	// Loop over the state definitions and register them
	states.forEach(function(state) {
		$stateProvider.state(state);
	})
	$urlRouterProvider.otherwise('/')
})

.run(function($http, $uiRouter) {
	var Visualizer = window['ui-router-visualizer'].Visualizer;
	$uiRouter.plugin(Visualizer);
//   $http.get('data/people.json', { cache: true });
})

.component('login', {
		templateUrl: 'components/view.login.html' 
	,	controller: CtrlIndex
})
.component('home', { 
	templateUrl: 'components/view.home.html' 
	,	controller: Ctrlingreso
})
.component('directorio', { 
		bindings: { directorio: '<' }
	,	templateUrl: 'components/view.directorio.html' 
	,	controller: Ctrldirectorio
})
.component('person', {
	bindings: { person: '<' },
	template: '<div>Name: Hello {{personId}} </div>'
	, controller: CtrlPerson
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
		getAllPeople: () => {
			// return console.log('Ejecución de servicio getAllPeople')
			return $http({
			            method:'POST',
			            url:'data/includes/sql/usuarios/listar_usuarios.php',
			            header:{
			                'Content-Type': undefined
			            },
			            data:{ control : "SI" } 
			        }).success(function(respuesta){
						// console.log(respuesta)
			            return respuesta;
			        }).error(function(err){
			            return console.log("Error: "+err);
			        });
		} ,
		getPerson: (id) => {
			function personMatchesParam(person) {
				console.log(person)
				return person.id === id;
			}
			return service.getAllPeople().then((people) => {
				console.log(people)
				// return people.find(personMatchesParam)
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
		// , a = MainService.ListarUsuarios()
	;
	vm.message = 'Estoy en directorio';
	vm.back = 'index';
  	// console.log(a);
  	console.log(vm)
  	console.log(dir.data)
	//   var usualisDirectorio = MainService.ListarUsuarios()
	//   console.log(usualisDirectorio.$$state)
};

function CtrlPerson(MainService, $scope, $stateParams, $state) {
	  console.log('Ctrl People')
	  $scope.personId = $stateParams.personId
};