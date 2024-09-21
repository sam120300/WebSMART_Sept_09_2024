<?php
$fname = $_settings->userdata('firstname');
$lname = $_settings->userdata('lastname');

$submitted = $fname . " " . $lname;
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
</style>

<div class="content py-2" readonly>
    <div class="row filters mt-3">
        <div class="col">
            <ul class="nav">
                <li class="nav-item"><a href="?page=forms" class="nav-link text-dark font-weight-bold">All Forms</a></li>
            </ul>
        </div>
        <div class="col-md-4 col-sm-12">
            <form class="w-100" id="search-form" method="GET" action="./">
                <input type="hidden" name="page" value="forms">
                <input style="height: 50px;" type="search" id="search-input" name="q" class="form-control rounded-5" required placeholder="Search..." value="<?= isset($_GET['q']) ? $_GET['q'] : '' ?>">
                <div id="suggestions-box" style="position: relative;">
                    <ul id="suggestions-list" class="list-group" style="position: absolute; z-index: 1000; width: 100%;">
                    </ul>
                </div>
            </form>
        </div>

        <!-- Search Suggestion Script -->
        <script>
    document.getElementById('suggestions-list').style.display = 'none';
    document.getElementById('search-input').addEventListener('input', function () {
        let query = this.value.trim();

        if (query.length > 0) {
            fetch(`forms_search_suggestions.php?q=${encodeURIComponent(query)}`)
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
        <div class="card card-outline card-success shadow rounded-0" style="color: #114e3f">
            <div class="card-body rounded-5">
                <h2>Forms List</h2>
                <hr class="bg-navy">
                <?php
                $limit = 10;
                $page = isset($_GET['p']) ? $_GET['p'] : 1;
                $offset = 10 * ($page - 1);
                $paginate = " limit {$limit} offset {$offset}";
                $isSearch = isset($_GET['q']) ? "&q={$_GET['q']}" : "";
                $search = "";
                if (isset($_GET['q'])) {
                    $keyword = $conn->real_escape_string($_GET['q']);
                    $search = " and (title LIKE '%{$keyword}%') ";
                }
                $forms = $conn->query("
                    SELECT *
                    FROM forms_list
                    WHERE status = 1 {$search}
                    ORDER BY unix_timestamp(date_created) DESC
                    {$paginate}
                ");
                $count_all = $conn->query("SELECT * FROM forms_list WHERE `status` = 1 {$search}")->num_rows;
                $pages = ceil($count_all / $limit);

                ?>
                <?php if (!empty($isSearch)) : ?>
                    <h3 class="text-center"><b>Search Result for "<?= $keyword ?>" keyword</b></h3>
                <?php endif ?>
                <div class="list-group">
                    <?php
                    while ($row = $forms->fetch_assoc()) :
                    ?>
                        <a href="./?page=view_form&id=<?= $row['id'] ?>" class="text-decoration-none text-dark list-group-item list-group-item-action">
                            <div class="row">
                                <div class="col-lg-2 col-md-2 col-sm-12 text-center">
                                    <img style="width: 100px;" src="assets/depts/forms-banner.png" class="banner-img img-fluid bg-gradient-light" alt="Banner Image">
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12">
                                    <h3 class="text-navy"><b><?php echo $row['title'] ?></b></h3>
                                    <small class="text-muted">By <b class="text-info"><?= !empty($row['submitted_by']) ? $row['submitted_by'] : "N/A" ?>  </b></small>   
                                </div>
                            </div>
                        </a>
                    <?php endwhile; ?>
                </div>
            </div>
            <div class="card-footer clearfix rounded-0">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-6"><span class="text-muted">Display Items: <?= $forms->num_rows ?></span></div>
                        <div class="col-md-6">
                            <ul class="pagination pagination-sm m-0 float-right">
                                <li class="page-item"><a class="page-link" href="./?page=forms<?= $isSearch ?>&p=<?= $page - 1 ?>" <?= $page == 1 ? 'disabled' : '' ?>>«</a></li>
                                <?php for ($i = 1; $i <= $pages; $i++) : ?>
                                    <li class="page-item"><a class="page-link <?= $page == $i ? 'active' : '' ?>" href="./?page=forms<?= $isSearch ?>&p=<?= $i ?>"><?= $i ?></a></li>
                                <?php endfor; ?>
                                <li class="page-item"><a class="page-link" href="./?page=forms<?= $isSearch ?>&p=<?= $page + 1 ?>" <?= $page == $pages ? 'disabled' : '' ?>>»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
