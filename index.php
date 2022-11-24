<?php
include "app/config.php";
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Task</title>
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
  <h1 class="text-center border border-danger m-1">Task</h1>

  <div class="container-lg">
    <div class="row">
      <div class="col-lg-7 img-sec d-lg-block d-none">
        <img src="https://picsum.photos/200/100" alt="">
      </div>
      <div class="col-lg-5 form-sec pb-2">
        <h2 class="text-center">Form</h2>

        <form method="POST">
          <div class="form-group mb-3">
            <label for="name">Name</label>
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter Name" required>
          </div>

          <div class="form-group mb-3">
            <label for="totalSale">Total Sale</label>
            <input type="number" class="form-control" id="totalSale" name="totalSale" placeholder="Total Sale">
          </div>

          <div class="input-group">
            <label class="input-group-text" for="country">Country</label>
            <select class="custom-select" name="country" onchange="selState(this)">
              <option selected>Choose...</option>
              <?php
              $selCon = "SELECT * FROM countries";
              $exeCon = mysqli_query($conn, $selCon);

              while ($fetchCon = mysqli_fetch_assoc($exeCon)) { ?>
                <option value="<?php echo $fetchCon['id'] ?>"><?php echo $fetchCon['name'] ?></option>
              <?php }
              ?>
            </select>
          </div>
          <h6 class="mb-3">(for demo select India)</h6>

          <div class="input-group">
            <label class="input-group-text" for="state">State</label>
            <select class="custom-select" name="state" id="state" disabled onchange="selCity(this)">
              <option selected>Select Country First</option>
            </select>
          </div>
          <h6 class="mb-3">(for demo select Maharastra)</h6>

          <div class="input-group mb-3">
            <label class="input-group-text" for="city">City</label>
            <select class="custom-select" name="city" id="city" disabled>
              <option selected>Select State First</option>
            </select>
          </div>

          <div class="form-group mb-3">
            <label for="invoice">Invoice</label>
            <input type="file" name="invoice" class="form-control" id="invoice" placeholder="invoice" required>
          </div>

          <div class="form-group mb-3">
            <label for="date">date</label>
            <input type="date" name="date" class="form-control" id="date" placeholder="invoice" required>
          </div>

          <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <h6 class="mt-2">NOTE: Only India's state are inserted in db and maharastra's cities are inserted</h6>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  
  <!-- state and city selection ajax -->
  <script>
    // state selection ajax
    function selState(conId) {
      var countryId = $(conId).val()
      // console.log(countryId);

      $.ajax({
        url: "ajax/sel-state.php",
        type: "get",
        data: {
          country: countryId
        },
        beforeSend: function() {

        },
        success: function(response) {
          $('#state').html(response);
          $('#state').removeAttr("disabled")
        }
      })

    }

    // city Selection ajax
    function selCity(conId) {
      var countryId = $(conId).val()
      // console.log(countryId);
      $.ajax({
        url: "ajax/sel-city.php",
        type: "get",
        data: {
          country: countryId
        },
        beforeSend: function() {

        },
        success: function(response) {
          $('#city').html(response);
          $('#city').removeAttr("disabled")
        }
      })

    }
  </script>

  <!-- date validation -->
  <script>
    $(function(){
      var newDt = new Date();
      var month = newDt.getMonth()+1;
      var day = newDt.getDate();
      var year = newDt.getFullYear();
      if(month <10){
        month = "0"+"month";
      }
      if(day < 10){
        day = "0" +"day"
      }
      var maxDt = year +"-"+ month +"-"+ day;
      $('#date').attr('max', maxDt);
    })
  </script>

  

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>