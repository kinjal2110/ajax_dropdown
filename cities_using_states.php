<?php
require_once 'database.php';
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
?>