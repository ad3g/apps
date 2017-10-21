<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>NFL 22 Point Pool - Standings</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
</head>
<body>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.9/angular.min.js"></script>
    <script type="text/javascript">
    const aws = require('aws-sdk');
    const s3 = new aws.S3(); // Pass in opts to S3 if necessary

var getParams = {
    Bucket: 'ad3g-nfl', // your bucket name,
    Key: 'nfljson.txt' // path to the object you're looking for
}

s3.getObject(getParams, function(err, data) {
    // Handle any error and exit
    if (err)
        return err;

  // No error happened
  // Convert Body from a Buffer to a String

  let objectData = data.Body.toString('utf-8'); // Use the encoding necessary
});
	    
	    
        var app = angular.module('MyApp', [])
        //angular.element(window.document.body).ready(function () {
        	app.controller('MyController', function ($scope) {
            //$scope.IsVisible = false;
            $scope.load = function () {
                $scope.Customers = objectData;
                $scope.IsVisible = true;
            };
        });
    //});
    </script>
    <div ng-app="MyApp" ng-controller="MyController" ng-init='load()'>
    <BR>
	<center><font size="36">NFL 22 Point Pool - Standingssss</font></center>
<!--         <input type="button" value="Generate Table" ng-click="GenerateTable()" /> -->
        <div class="table-responsive"><center><font size="18">Year: 2017  Season: Regular</font></center>        
        <table class="table table-bordered text-center ng-show="IsVisible">
            <tr>
                <th>Player Name</th>
                <th class="text-center">1</th>
                <th class="text-center">2</th>
                <th class="text-center">3</th>
                <th class="text-center">4</th>
                <th class="text-center">5</th>
<!--                 <th>6</th> -->
<!--                 <th>7</th> -->
<!--                 <th>8</th> -->
<!--                 <th>9</th> -->
<!--                 <th>10</th> -->
<!--                 <th>11</th> -->
<!--                 <th>12</th> -->
<!--                 <th>13</th> -->
<!--                 <th>14</th> -->
<!--                 <th>15</th> -->
<!--                 <th>16</th> -->
<!--                 <th>17</th> -->
            </tr>
            <tbody ng-repeat="m in Customers">
                <tr>
                    <td>{{m.Player}}</td>
                    <td>{{m.tm1}}<BR>{{m.sc1}}</td>
                    <td>{{m.tm2}}<BR>{{m.sc2}}</td>
                    <td>{{m.tm3}}<BR>{{m.sc3}}</td>
                    <td>{{m.tm4}}<BR>{{m.sc4}}</td>
                    <td>{{m.tm5}}<BR>{{m.sc5}}</td>
<!--                     <td>{{m.tm6}}</td> -->
<!--                     <td>{{m.tm7}}</td> -->
<!--                     <td>{{m.tm8}}</td> -->
<!--                     <td>{{m.tm9}}</td> -->
<!--                     <td>{{m.tm10}}</td> -->
<!--                     <td>{{m.tm11}}</td> -->
<!--                     <td>{{m.tm12}}</td> -->
<!--                     <td>{{m.tm13}}</td> -->
<!--                     <td>{{m.tm14}}</td> -->
<!--                     <td>{{m.tm15}}</td> -->
<!--                     <td>{{m.tm16}}</td> -->
<!--                     <td>{{m.tm17}}</td> -->
                </tr>
            </tbody>
        </table>
    </div>
    <h3><B>What is the NFL 22 Point Challenge:</B></h3>
	<div>
		<ul>
			<li>Limited to 26 players, due to teams having bye weeks (guarantee's each player has a team each week)</li>
			<li>A player can enter more than once, but must pay for each entry (ie. James I, James II)</li>
			<li>One time entry fee of $102, for each entry ($6 per week)</li>
			<li>Total prize pool $2652 (26 * 6 * 17= 2652)</li>
			<li>Players are randomly assigned an NFL team for each week of the regular season</li>
			<li>Teams are assigned before the season starts, once all players have paid their entry fee</li>
			<li>A player may be assigned the same team multiple times, it's a random draw</li>
			<li>Pot will start out at $156 in Week 1</li>
			<li>Pot grows $156 each week until a team scores 22 points</li>
			<li>Once a team scores 22 points and wins the pot, it will reset to $156 the following week</li>
			<li>If multiple teams score 22 points in a week the total accumulated pot to that point is divided amoung the # of winners, ex. Week 2 Pot is $312, and 2 teams hit 22 points each player receives $156</li>
			<li>Pots are split at the completion of a week, not the first team to score 22 points</li>
			<li>Any left over pot is carried forward to next year</li>
			<li>Current players have priority to enter next years season, by providing the next years entry fee</li>
		<br>
		</ul>
	</div>
</body>
</html>
