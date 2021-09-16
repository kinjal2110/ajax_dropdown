<?php
require_once 'database.php';

if(isset($_GET['c_id']) &&  $_GET['c_id'] != ''){
    $country_id = $_GET['c_id'];
    $query = "SELECT * FROM states WHERE c_id = $country_id";
    // print_r($query); exit;
    $result = mysqli_query($con, $query);
    ?>
    <option value="">Select State</option>
    <?php
    while($row = mysqli_fetch_array($result))
    {
        // echo $row; exit;
        ?>
        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
        <?php
    }

} else if(isset($_GET['s_id']) && $_GET['s_id'] != ''){
    $state_id = $_GET['s_id'];
    $query = "SELECT * FROM cities WHERE s_id = $state_id";
    $result = mysqli_query($con, $query);
    ?>
    <option value="">Select City</option>
    <?php
    while($row = mysqli_fetch_array($result))
    {
        ?>
    <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
        <?php
    }
}

?>