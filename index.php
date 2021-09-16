<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax dynamic country</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <h2 class="text-center text-primary">Dynamic dropdown</h2>

        <!-- for country drop-down -->
        <div class="form-group">
            <label for="country " class="font-weight-bold">Country:</label>
            <select name="country" class="form-control" id="country">
                <option value="" class="">select country</option>
                <?php
                require "database.php";
                $query = "SELECT * FROM countries;";
                // print_r($query); exit;
                $result = mysqli_query($con, $query);
                while ($row = mysqli_fetch_assoc($result)) {

                ?>
                    <option value="<?php echo $row['id']; ?>  "><?php echo $row['name']; ?></option>
                <?php
                }
                ?>
            </select>
        </div>

        <!-- state drop-down -->
        <div class="form-group">
            <label for="state " class="font-weight-bold">State:</label>
            <select name="" class="form-control" id="state">
            <option value="" class="">select state</option>
            </select>
        </div>

        <!-- city drop-down -->
        <div class="form-group">
            <label for="city " class="font-weight-bold">City:</label>
            <select name="" class="form-control" id="city">
            <option value="" class="">select city</option>
            </select>
        </div>
    </div>
</body>
<script>
    var country = document.getElementById('country');
    var state = document.getElementById('state');

    country.addEventListener('change', function(e) {
        var c_id = this.options[this.selectedIndex].value;
        console.log(c_id);
        if(c_id != "") {
            //Ajax call
            let xhr = new XMLHttpRequest();
            var url = "http://localhost/country_Ajax/states_using_country.php?c_id=" + c_id;
            xhr.open('GET', url);
            // selected_country.innerHTML = selected_value + '\n' +selected_text;

            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var text = xhr.responseText;
                    var state = document.getElementById('state');
                    state.innerHTML = text;
                    state.style.display = 'inline';

                }
            }

            xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded'); //x-www-form-url
            xhr.send();
        }else{
            document.getElementById('state').innerHTML = '<option value="" class="">select state</option>';
        }
        document.getElementById('city').innerHTML = '<option value="" class="">select city</option>';
    });

    //AJAX call for get cities by state
    state.addEventListener('change', function(e) {
        var s_id = this.options[this.selectedIndex].value;
        console.log(s_id);
        let xhr = new XMLHttpRequest();
        var url = "http://localhost/country_Ajax/states_using_country.php?s_id=" + s_id;
        xhr.open('GET', url);

        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var text = xhr.responseText;
                var city = document.getElementById('city');
                city.innerHTML = text;
                city.style.display = 'inline';
            }
        }
        xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded'); //x-www-form-url
        xhr.send();
    });
</script>

</html>

