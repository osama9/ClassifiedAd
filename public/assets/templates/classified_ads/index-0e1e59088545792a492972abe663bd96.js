// Angular Rails Template
// source: app/assets/javascripts/templates/classified_ads/index.html.erb

angular.module("templates").run(["$templateCache", function($templateCache) {
  $templateCache.put("classified_ads/index.html", '\n\n\n<table class="table" ng-cloak>\n	<thead>\n    <tr>\n      <th></th>\n      <th></th>\n      <th>City</th>\n      <th>Date</th>\n    </tr>\n  </thead>\n\n   <tbody>\n    \n      <tr ng-repeat="classified in vm.classifiedList">\n        \n          <td class="post-image"><img src="{{classified.images[0].path.url}}" width="150" height="100" /></td>\n          <td>\n          	<h4><a href="/classified_ads/{{classified.id}}"> {{classified.title}}</a></h4>\n          	<p>{{classified.description}}</p>\n          </td>\n          <td class="post-city">\n          	<h5>\n          	{{classified.city.english_name}}\n          	</h5>\n          </td>\n          <td>{{classified.created_at | date:"dd/MM/yyyy \'at\' h:mma"}}</td>\n        \n      </tr>\n \n  </tbody>\n</table>\n\n')
}]);

