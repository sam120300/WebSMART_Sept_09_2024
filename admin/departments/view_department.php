
<?php
require_once('../../config.php');
if (isset($_GET['id'])) {
    $qry = $conn->query("SELECT * FROM `department_list` WHERE id = '{$_GET['id']}'");
    if ($qry !== false) {

        if ($qry->num_rows > 0) {
            $res = $qry->fetch_array();
            foreach ($res as $k => $v) {
                if (!is_numeric($k))
                    $$k = $v;
            }
        }
    } else {
        // Handle query error, you may want to log or display an error message
        echo "Error executing query: " . $conn->error;
    }
}
?>
<style>
    #uni_modal .modal-footer{
        display:none !importan t;
    }
</style>
<div class="container-fluid">
    <dl>
        <dt class="text-muted">Name</dt>
        <dd class='pl-4 fs-4 fw-bold'><?= isset($name) ? $name : '' ?></dd>
        <dt class="text-muted">Description</dt>
        <dd class='pl-4'>
            <p class=""><small><?= isset($description) ? $description : '' ?></small></p>
        </dd>
        <dt class="text-muted">Status</dt>
        <dd class='pl-4'>
            <?php
            if(isset($status)):
                switch($status){
                    case '1':
                        echo "<span class='badge badge-success badge-pill'>Active</span>";
                        break;
                    case '0':
                        echo "<span class='badge badge-secondary badge-pill'>Inactive</span>";
                        break;
                }
            endif;
            ?>
        </dd>
    </dl>
    <div class="col-12 text-right">
        <button class="btn btn-flat btn-sm btn-dark" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
    </div>
</div>