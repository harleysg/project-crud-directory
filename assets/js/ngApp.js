const myApp = angular.module('appComponent', ['ui.router']);

myApp
.config(function ($stateProvider, $urlRouterProvider){

	let states = [
		{
				name:	'login'
			,	url:	'/'
			,	component:	'login'
			,	resolve: {
					access: function(MainService) {
						return MainService.getAccess();
					}
				}
		},
		{
				name:	'home'
			,	url:	'/home'
			,	component: 'home'
			,	resolve: {
					access: function(MainService) {
						return MainService.getAccess();
					}
				}
		}
		,{
				name:	'directorio'
			,	url:	'/directorio'
			,	component: 'directorio'
			,	resolve:{
					directorio: function(MainService){
						return MainService.getAllPeople('all');
					},
					access: function(MainService) {
						return MainService.getAccess();
					}
				}
		}
		,{ 
				name: 'directorio.personaDetail'
			,	url: ''
			,	params: {personId: null}
			,	component: 'person'
			,	resolve: {
					person: function (MainService, $stateParams) {
						return MainService.getPerson($stateParams.personId);
					},
					access: function(MainService) {
						return MainService.getAccess();
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
	//	$http.get('data/people.json', { cache: true });
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
	template: 
	`<div class="o-container">
		<ul>
			<li><a ui-sref="directorio">back</a></li>
			<li ng-repeat="user in $ctrl.person">
			Hello {{ user.name }}
			</li>
		</ul>
	</div> `
	, controller: CtrlPerson
})
.service('MainService', function($http){
	let service = {
		getAccess: () => {
		} ,
		getAllPeople: (query, id_user) => {
			id_user = id_user || '';
			return $http({
				method:'POST',
				url:'data/includes/sql/usuarios/listar_usuarios.php',
				header:{
					'Content-Type': undefined
				},
				data:{ 
					control : "SI",
					query : query,
					id_user : id_user
				}
			}).success(function(respuesta){
				return respuesta;
			}).error(function(err){
				return console.log("Error: "+err);
			});
		} ,
		getPerson: (id) => {
			return service.getAllPeople('person', id).then((people) => {
				// return people.data.filter(person => person.id === id)
				return people.data
			});
		}
	}
	return service;
})

/**
 * FUNCIONES QUE REEMPLAZAN A LOS CONTROLADORES
 * Estos se usan exclusivamente con cada componente
 */

function CtrlIndex(){};

function Ctrlingreso(){};

function Ctrldirectorio($scope, $stateParams, $state){
	let vm = this ;
		vm.directorio
		vm.person
		vm.message = 'Estoy en directorio';
		vm.back = 'index';
		getState(vm, $state);
};

function CtrlPerson($scope, $stateParams, $state) {
	let vm = this ;
	$scope.personId = $stateParams.personId
	getState(vm, $state);
};

/**
 * 
*/

function getState(vm, $state) {
	vm.state = $state.current.name;
	console.log(vm.state);
}