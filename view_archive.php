<?php 
if(isset($_GET['id']) && $_GET['id'] > 0){
    $conn->query("UPDATE archive_list SET views_count = views_count + 1 WHERE id = '{$_GET['id']}'");
    $qry = $conn->query("SELECT a.* FROM `archive_list` a where a.id = '{$_GET['id']}'");
    if($qry->num_rows){
        foreach($qry->fetch_array() as $k => $v){
            if(!is_numeric($k))
            $$k = $v;
        }
    }
}

if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT a.* FROM `archive_list` a where a.id = '{$_GET['id']}'");
    if($qry->num_rows){
        $row = $qry->fetch_assoc();
        $act_year = $row['year'];
        $type = $row['type'];
        $style = $row['style'];
    }
}
?>


<style>
    #document_field, #abstract_field {
        min-height: 80vh;
    }
    .filters {
        margin-top: -50px;
    }
    .droppy{
        overflow: scroll;
        height: 40vh;
    }
    #document_field, #abstract_field {
    width: 100%;
    min-height: 80vh;
    }

    @media (max-width: 768px) {
        #document_field, #abstract_field {
            height: 60vh; /* Reduce the height for smaller screens */
        }
    }

    @media (max-width: 480px) {
        #document_field, #abstract_field {
            height: 50vh; /* Further reduce height for very small screens */
        }
    }

</style>
<div class="content py-2">
<div class="row filters mt-3">
        <div class="col">
            <ul class="nav">
                    <li class="nav-item"><a href="?page=projects" class="nav-link text-dark font-weight-bold">All Projects</a></li>
                <li class="nav-item dropdown">
                    <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle <?= isset($page) && $page == 'projects_per_department' ? 'active' : '' ?>" style="color: black; font-weight: 500;">Department</a>
                    <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow droppy">
                        <?php 
                        $departments = $conn->query("SELECT * FROM department_list WHERE status = 1 ORDER BY `name` ASC");
                        while($row = $departments->fetch_assoc()):
                        ?>
                        <li><a href="./?page=projects_per_department&id=<?= $row['id'] ?>" class="dropdown-item"><?= ucwords($row['name']) ?></a></li>
                        <?php if($departments->num_rows > 1): ?>
                        <li class="dropdown-divider"></li>
                        <?php endif; ?>
                        <?php endwhile; ?>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle <?= isset($page) && $page == 'projects_per_curriculum' ? 'active' : '' ?>" style="color: black; font-weight: 500;">Courses</a>
                    <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow droppy">
                        <?php 
                        $curriculums = $conn->query("SELECT * FROM curriculum_list WHERE status = 1 ORDER BY `name` ASC");
                        while($row = $curriculums->fetch_assoc()):
                        ?>
                        <li><a href="./?page=projects_per_curriculum&id=<?= $row['id'] ?>" class="dropdown-item"><?= ucwords($row['name']) ?></a></li>
                        <?php if($curriculums->num_rows > 1): ?>
                        <li class="dropdown-divider"></li>
                        <?php endif; ?>
                        <?php endwhile; ?>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a id="dropdownSubMenuYear" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle <?= isset($page) && $page == 'projects_per_year' ? 'active' : '' ?>" style="color: black; font-weight: 500;">Year</a>
                    <ul aria-labelledby="dropdownSubMenuYear" class="dropdown-menu border-0 shadow droppy">
                        <?php
                        $currentYear = date("Y");
                        for ($year = $currentYear; $year >= ($currentYear - 20); $year--) {
                            echo '<li><a href="./?page=projects_per_year&year=' . $year . '" class="dropdown-item">' . $year . '</a></li>';
                        }
                        ?>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle <?= isset($page) && $page == 'projects_per_type' ? 'active' : '' ?>" style="color: black; font-weight: 500;">Research Type</a>
                    <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow droppy">
                        <?php 
                        $curriculums = $conn->query("SELECT * FROM research_type ORDER BY `type` ASC");
                        while($row = $curriculums->fetch_assoc()):
                        ?>
                        <li><a href="./?page=projects_per_type&id=<?= $row['id'] ?>" class="dropdown-item"><?= ucwords($row['type']) ?></a></li>
                        <?php if($curriculums->num_rows > 1): ?>
                        <li class="dropdown-divider"></li>
                        <?php endif; ?>
                        <?php endwhile; ?>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle <?= isset($page) && $page == 'projects_per_style' ? 'active' : '' ?>" style="color: black; font-weight: 500;">Reference Style</a>
                    <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow droppy">
                        <?php 
                        $curriculums = $conn->query("SELECT * FROM reference_style ORDER BY `style` ASC");
                        while($row = $curriculums->fetch_assoc()):
                        ?>
                        <li><a href="./?page=projects_per_style&id=<?= $row['id'] ?>" class="dropdown-item"><?= ucwords($row['style']) ?></a></li>
                        <?php if($curriculums->num_rows > 1): ?>
                        <li class="dropdown-divider"></li>
                        <?php endif; ?>
                        <?php endwhile; ?>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="col-md-4 col-sm-12">
            <form class="w-100" id="search-form" method="GET" action="./">
                <input type="hidden" name="page" value="projects">
                <input style="height: 50px;" type="search" id="search-input" name="q" class="form-control rounded-5" required placeholder="Search..." value="<?= isset($_GET['q']) ? $_GET['q'] : '' ?>">
                <div id="suggestions-box" style="position: relative;">
                    <ul id="suggestions-list" class="list-group" style="position: absolute; z-index: 1000; width: 100%;">
                    </ul>
                </div>
            </form>
        </div>

        <script>
    document.getElementById('suggestions-list').style.display = 'none';
    document.getElementById('search-input').addEventListener('input', function () {
        let query = this.value.trim();

        if (query.length > 0) {
            fetch(`search_suggestions.php?q=${encodeURIComponent(query)}`)
                .then(response => response.text())
                .then(data => {
                    const suggestionsList = document.getElementById('suggestions-list');
                    suggestionsList.innerHTML = data.trim() !== '' ? data : '';
                    suggestionsList.style.display = data.trim() !== '' ? 'block' : 'none';

                    // Update search count
                    fetch('update_search_count.php');
                });
        } else {
            document.getElementById('suggestions-list').innerHTML = '';
            document.getElementById('suggestions-list').style.display = 'none';
        }
    });

    document.addEventListener('click', function (e) {
        if (e.target && e.target.matches('.suggestion-item')) {
            // Extract the title from the data-title attribute
            const selectedTitle = e.target.getAttribute('data-title');
            document.getElementById('search-input').value = selectedTitle;

            // Automatically submit the form to trigger the search
            document.getElementById('search-form').submit();
        }
    });

    document.addEventListener('click', function (e) {
        if (!document.getElementById('suggestions-box').contains(e.target)) {
            document.getElementById('suggestions-list').innerHTML = '';
            document.getElementById('suggestions-list').style.display = 'none';
        }
    });
</script>

    </div>
    <div class="col-12 mt-3">
        <div class="card card-outline card-success shadow rounded-0">
            <div class="card-body rounded-0">
                <div class="container-fluid">
                    <h2><b><?= isset($title) ? $title : "" ?></b></h2>
                    <small class="text-muted">Submitted by <b class="text-info"><?= $submitted_by ?></b> on  <?= date("F d, Y h:i A",strtotime($date_created)) ?></small>
                    <?php if(isset($student_id) && $_settings->userdata('login_type') == "2" && $student_id == $_settings->userdata('id')): ?>
                        <div class="form-group">
                            <a href="./?page=submit-archive&id=<?= isset($id) ? $id : "" ?>" class="btn btn-flat btn-default bg-navy btn-sm"><i class="fa fa-edit"></i> Edit</a>
                            <button type="button" data-id = "<?= isset($id) ? $id : "" ?>" class="btn btn-flat btn-danger btn-sm delete-data"><i class="fa fa-trash"></i> Delete</button>
                        </div>
                    <?php endif; ?>
                    <hr>
                    <!-- <center>
                        <img src="<?= validate_image(isset($banner_path) ? $banner_path : "") ?>" alt="Banner Image" id="banner-img" class="img-fluid border bg-gradient-dark">
                    </center> -->
                    <fieldset>
                        <legend class="text-navy">Research Type:</legend>
                        <div class="pl-4"><large><?= isset($type) ? htmlspecialchars($type) : "----" ?></large></div>
                    </fieldset>

                    <fieldset>
                        <legend class="text-navy">Reference Style:</legend>
                        <div class="pl-4"><large><?= isset($style) ? htmlspecialchars($style) : "----" ?></large></div>
                    </fieldset>

                    <fieldset>
                        <legend class="text-navy">Project Year:</legend>
                        <div class="pl-4"><large><?= isset($act_year) ? htmlspecialchars($act_year) : "----" ?></large></div>
                    </fieldset>
                    
                    
                    <fieldset>
                        <legend class="text-navy">Members:</legend>
                        <div class="pl-4"><large><?= isset($members) ? html_entity_decode($members) : "" ?></large></div>
                    </fieldset>

                    <fieldset>
                        <legend class="text-navy">Abstract:</legend>
                        <div class="pl-4">
                            <iframe src="<?= isset($abstract) ? base_url.$abstract : "" ?>" frameborder="0" id="abstract_field" class="text-center w-100" readonly>Loading Abstract ...</iframe>
                        </div>
                    </fieldset>
                    <?php if($_settings->userdata('id') > 0): ?>
                        <fieldset>
                            <legend class="text-navy">Project Document:</legend>
                            <div class="pl-4">
                                <iframe src="<?= isset($document_path) ? base_url.$document_path : "" ?>" frameborder="0" id="document_field" class="text-center w-100" readonly>Loading Document ...</iframe>
                            </div>
                        </fieldset>
                    <?php endif; ?>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function(){
        $('.delete-data').click(function(){
            _conf("Are you sure to delete <b>Archive-<?= isset($archive_code) ? $archive_code : "" ?></b>","delete_archive")
        })
    })
    function delete_archive(){
        start_loader();
        $.ajax({
            url:_base_url_+"classes/Master.php?f=delete_archive",
            method:"POST",
            data:{id: "<?= isset($id) ? $id : "" ?>"},
            dataType:"json",
            error:err=>{
                console.log(err)
                alert_toast("An error occured.",'error');
                end_loader();
            },
            success:function(resp){
                if(typeof resp== 'object' && resp.status == 'success'){
                    location.replace("./");
                }else{
                    alert_toast("An error occured.",'error');
                    end_loader();
                }
            }
        })
    }
    
</script>
