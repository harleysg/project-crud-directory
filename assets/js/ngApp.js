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
	// $uiRouter.plugin(Visualizer);
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
	`<div class="o-viewChild" ui-sref-active="is-active">
		<div class="o-container--view">
			<div>
				<a class="c-btn" ui-sref="directorio">back</a>
			</div>
			<div>
				<span ng-repeat="user in $ctrl.person">
				Hello {{ user.name }}
				</span>
			</div>
		</div>
	</div> `
	, controller: ctrlPerson
})
.service('MainService', function ($http){
	let service = {
		getAccess: () => {
		} ,
		getAllPeople: (query, id_person) => {
			id_person = id_person || '';
			if (navigator.onLine) {
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
						id_user : id_person
					}
				}).success(function(response){
					if (id_person == '') {
						localStorage.directory = JSON.stringify({data: response})
					}
					return response;
				}).error(function(err){
					console.log("Error: "+err);
					return localStorage.directory
				});
			} else if (!navigator.onLine) {
				
				if (typeof (Storage) !== "undefined") {
					
					if (query == 'all' || id_person == '') {
						if (localStorage.directory) {
							console.log('People offline');
							return JSON.parse(localStorage.directory)
						}
					} else {
						console.log('Person offline');
						let _directoryStorage = JSON.parse(localStorage.directory)
						return _directoryStorage.data.filter(person => person.id == id_person)
					}
				}
			}
		} ,
		getPerson: (id_person) => {
			if (navigator.onLine) {
				return service.getAllPeople('person', id_person).then((people) => {
					return people.data
				});
			}
			else if (!navigator.onLine) {
				return service.getAllPeople('person', id_person)
			}
		}
	}
	return service;
})

/**
 * FUNCIONES QUE REEMPLAZAN A LOS CONTROLADORES
 * Estos se usan exclusivamente con cada componente
 */

function ctrlLogin($scope, $stateParams, $state){
	let vm = this ;
	vm.state = $state
	// console.log(vm)
	caches
		.keys()
		// Depurar cache si algún archivo ha sido cambiado
		.then(cacheNames => {
			// console.log(cacheNames);
			return Promise.all(
				cacheNames.map(cacheName => {
					// console.log(cacheName)
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