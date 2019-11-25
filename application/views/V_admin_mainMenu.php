<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OneTech Admin</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>Asset/css/seeprod.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>Asset/css/style.css" />
</head>

<body>
<div class="flex-container">
   <!-- <div class="table-wrapper">
    <div class="table-title">-->
    <div class="row">
        <div class="col-sm-8">
            <h2>See <b>Product</b></h2>
        </div>
        <div class="col-sm-4">
            <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New</button>
        </div>
    </div>
</div>
<table class="table table-bordered">
    <thead>
        <tr>
            <th>id</th>
            <th>Image</th>
            <th>CodeProduct</th>
            <th>Name</th>
            <th>Category</th>
            <th>Merk</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Start Date</th>
            <th>Last Date</th>
            <th>Actions</th>

        </tr>
    </thead>
    <tbody>
        <tr>
            <td>John Doe</td>
            <td class="w-25">
                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/sheep-5.jpg" class="img-fluid img-thumbnail" alt="Sheep">
            </td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td><input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31"></td>
            <td><input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31"></td>

            <td>
                <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
            </td>
        </tr>
        <tr>
            <td>Peter Parker</td>
            <td class="w-25">
                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/sheep-5.jpg" class="img-fluid img-thumbnail" alt="Sheep">
            </td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td><input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31"></td>
            <td><input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31"></td>

            <td>
                <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
            </td>
        </tr>
        <tr>
            <td>Fran Wilson</td>
            <td class="w-25">
                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/sheep-5.jpg" class="img-fluid img-thumbnail" alt="Sheep">
            </td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td>Administration</td>
            <td><input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31"></td>
            <td><input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31"></td>

            <td>
                <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
            </td>
        </tr>
    </tbody>
</table>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>Asset/js/seeprod.js"></script>
</body>

</html>