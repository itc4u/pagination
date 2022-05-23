<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax Make Pagination using JQuery, PHP & MySQL </title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card-body">
                <h2 class="text-center text-primary">Ajax Make Pagination using JQuery, PHP & MySQL</h2>
                <div id="get_data"></div>
            </div>
        </div>
    </div>
</div>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function fetch_data(page){
        $.ajax({
            url: "pagination.php",
            method: "POST",
            data: {
                page: page
            },
            success: function(data) {
                $("#get_data").html(data);
            }
        });
    }
    fetch_data();
    $(document).on("click", ".page-item", function(){
        var page = $(this).attr("id");
        fetch_data(page);
    })
</script>

</body>
</html>