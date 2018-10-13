const myApp = angular.module('appComponent', ['ui.router']);
const CACHE_NAME = 'pwa-uiRouter-angularJs-directory-cache-v1';
/**
 * DEFINE Angular functions
 */
myApp
.config(function ($stateProvider, $urlRouterProvider){

	let
		domBody = document.querySelector('body'),
		states = [
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
				}
			,	onEnter: function ($state, $stateParams) {
					domBody.classList.add('is-viewChild-active');
				}
			,	onExit: function ($state, $stateParams) {
					domBody.classList.remove('is-viewChild-active');
				}
		}
	]
	// Loop over the state definitions and register them
	states.forEach(function(state) {
		$stateProvider.state(state);
	})
	$urlRouterProvider.otherwise('/')
})

.run(function($http, $uiRouter, $rootScope) {
	var Visualizer = window['ui-router-visualizer'].Visualizer;
	$uiRouter.plugin(Visualizer);
	//	$http.get('data/people.json', { cache: true });
	$rootScope.head_title = 'uiRouter + angularJS components'
})

.component('login', {
		templateUrl: 'components/view.login.html' 
	,	controller: ctrlLogin
})
.component('home', { 
	templateUrl: 'components/view.home.html' 
	,	controller: ctrlHome
})
.component('directorio', { 
		bindings: { directorio: '<' }
	,	templateUrl: 'components/view.directorio.html' 
	,	controller: ctrlDirectory
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
	, controller: ctrlPerson
})
.service('MainService', function ($http){
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
				cache: true,
				data:{ 
					control : "SI",
					query : query,
					id_user : id_user
				}
			}).success(function(response){
				localStorage.directory = JSON.stringify(response)
				return response;
			}).error(function(err){
				return localStorage.directory
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

function ctrlLogin(){
	caches
		.keys()
		// Depurar cache si algún archivo ha sido cambiado
		.then(cacheNames => {
			console.log(cacheNames);
			return Promise.all(
				cacheNames.map(cacheName => {
					console.log(cacheName)
				})
			)
		})
};

function ctrlHome(){};

function ctrlDirectory($scope, $stateParams, $state){
	let vm = this ;
		vm.directorio
		vm.person
		vm.message = 'Estoy en directorio';
		vm.back = 'index';
		getState(vm, $state);

	let datos = JSON.stringify(vm.directorio.data)
	// console.log(datos)
	if (typeof (Storage) !== "undefined") {
		if (localStorage.directory) {
			vm.directorio.data = JSON.parse(localStorage.directory)
		} else {
			localStorage.directory = vm.directorio.data
		}
	}
};

function ctrlPerson($scope, $stateParams, $state) {
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