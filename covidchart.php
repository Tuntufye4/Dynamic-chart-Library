
<?php
$connect = mysqli_connect("localhost","root","","cases_db");
$query = "SELECT count(Name) as People, case_type FROM `tbl_people_cases` GROUP by case_type";
$result = mysqli_query($connect , $query);

$resultCount=$result->num_rows;

$color = ['#dc7877','#9cbb73','#9ee2d9','#9f9ee2','#e29eba'];
$case_type = array();
$people = array();
foreach ($result as $case) {
    $case_type[] = $case['case_type'];
    $people[] = $case['People'];
}
?>

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
       <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
      
    google.charts.setOnLoadCallback(drawPieChart);
      
    function drawPieChart() {

      var data = new google.visualization.arrayToDataTable([
        ["case_type","People"],
        <?php
        for($i=0;$i<$resultCount;$i++){
          ?>[<?php echo "'".$case_type[$i]."', ".$people[$i] ?>],
        <?php } 
        ?>
        ]);

   var options = {
          title: "Percentage of cases",
          width: '100%',
          height: '200px',
          colors: [
            <?php
            for($i=0;$i<$resultCount;$i++) {
              echo "'".$color[$i]."',";
            } 
            ?>
          ]
        };
      var chart = new google.visualization.PieChart(document.getElementById('pie-chart'));
      chart.draw(data, options);
    }


   


  google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawColumnChart);
    function drawColumnChart() {
      var data = google.visualization.arrayToDataTable([
        ['case_type', 'Population', { role: 'style' }, { role: 'annotation' }],
        <?php
        for($i=0;$i<$resultCount;$i++){
          ?>[<?php echo "'".$case_type[$i]."', ".$people[$i].", '".$color[$i]."' , "."'".$people[$i]."'" ?>],
        <?php } 
        ?>
        ]);


      var options = {
        title: "Number of Cases",
        chartArea: {width: '100%'},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("column-chart"));
      chart.draw(data, options);
  }
    </script>
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>

  <body>
    <div id="chart_container">
      <div id="pie-chart" class="chart-div"></div>

      <div id="bar-chart" class="chart-div"></div>

      <div id="column-chart" class="chart-div"></div>
    </div>
  </body>
</html>