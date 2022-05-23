<?php

// Database Connection
$con = mysqli_connect("localhost", "root", "root", "pagination");

// Fetch Limit Data Code
$limit = 5;
$page = 0;
$output = '';

if(isset($_POST["page"])){
    $page = $_POST["page"];
} else {
    $page = 1;
}

$start_from = ($page-1)*$limit;
$query = mysqli_query($con, "SELECT * from user ORDER BY id DESC LIMIT $start_from, $limit");
//echo $start_from. "</br>";
//echo $limit;
$output .= ' 
<div class="table-responsive">
<table class="table">
<tr>
<th>user Pic</th>
<th>Name</th>
<th>Gender</th>
<th>Color</th>
<th>Email</th>
<th>Date of Birth</th>
<th>Country</th>
<th>Address</th>
</tr>
';

if(mysqli_num_rows($query)  > 0) {
    while ($row = mysqli_fetch_array($query)){
        if(!empty($row["user_pic"])){
            $user_pic = '<img src ="upload/'.$row["user_pic"].'" class="img-thumbnail" />';
        } else {
            $user_pic = '<img src ="upload/default.png" class="img-thumbnail" />';
        }
        $output .= '
        <tr>
        <td>'.$user_pic.'</td>
        <td>'.ucfirst($row["name"]).'</td>
        <td>'.ucfirst($row["gender"]).'</td>
        <td>'.ucfirst(str_replace(",","/ ", strtolower($row["color"]))).'</td>
        <td>'.$row["email"].'</td>
        <td>'.date("d/M/Y", strtotime($row["date_of_birth"])).'</td>
        <td>'.$row["country"].'</td>
        <td>'.$row["address"].'</td>
        </tr>
        ';

    }
}else {
    $output .='
        <tr> 
        <td> Data not Found. </td>
        </tr>
    ';
}

$output .= '
</table>
</div>
';

// Pagination Code

$query = mysqli_query($con, "SELECT * from user");
$total_records = mysqli_num_rows($query);
$total_pages = ceil($total_records/$limit);
$output .= '<ul class="pagination">';
if($page > 1) {
    $previous = $page - 1;
    $output .= '<li class="page-item" id="1"><span class="page-link">First Page</span></li>';
    $output .= '<li class="page-item" id="'.$previous.'"><span class="page-link"><i class="fa fa-arrow-left"></i></span></li>';
}

for($i=1; $i<=$total_pages; $i++){
    $active_class = "";
    if($i == $page){
        $action_class = "active";
    }else {
        $action_class = null;
    }
    $output .= '<li class="page-item '.$action_class.'" id= "'.$i.'"><span class="page-link">'.$i.'</span></li>';
}

if($page < $total_pages) {
    $page++;
    $output .= '<li class="page-item" id="'.$page.'"><span class="page-link"><i class="fa fa-arrow-right"></i></span>';
    $output .= '<li class="page-item" id="'.$total_pages.'"><span class ="page-link">Last Page</span></li>';
}
$output .= '</ul>';

echo $output;
?>

