<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                    <em class="fa fa-home"></em>
                </a></li>
            <li class="active">Quản Lý Dịch vụ</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản Lý Dịch vụ</h1>
        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Chi Tiết Dịch vụ:
                    <a href="index.php?add_service" class="btn btn-info pull-right">Thêm Dịch vụ</a>
                </div>
                <div class="panel-body">
                    <?php
                    if (isset($_GET['error'])) {
                        echo "<div class='alert alert-danger'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Error on Shift Change !
                            </div>";
                    }
                    if (isset($_GET['success'])) {
                        echo "<div class='alert alert-success'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Shift Successfully Changed!
                            </div>";
                    }
                    ?>
                    <table class="table table-striped table-bordered table-responsive" cellspacing="0" width="100%"
                           id="services">
                        <thead>
                        <tr>
                            <th>Tên dịch vụ</th>
                            <th>Loại dịch vụ</th>
                            <th>Giá dịch vụ</th>
                            <th>Đơn vị tính</th>
                            <th>Thời gian dịch vụ bắt đầu</th>
                            <th>Thời gian dịch vụ kết thúc</th>
                            <th>số lượng tối đa tham gia</th>
                            <th>số lượng tham gia</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        
                        $service_query = "SELECT * FROM service";
                        $service_result = mysqli_query($connection, $service_query);

                        if (mysqli_num_rows($service_result) > 0) {
                            while ($service = mysqli_fetch_assoc($service_result)) { ?>
                                <tr>

                                    <td><?php echo $service['name_service']; ?></td>
                                    <td><?php echo $service['type_service']; ?></td>
                                    <td><?php echo $service['price_service']; ?></td>
                                    <td><?php echo $service['unit_service']; ?></td>
                                    <td><?php echo $service['time_start']; ?></td>
                                    <td><?php echo $service['time_end']; ?></td>
                                    <td><?php echo $service['max_custom']; ?></td>
									<td><?php echo $service['number_custom']; ?></td>
                                    <td>

                                        <button data-toggle="modal"
                                                data-target="#ServiceDetail<?php echo $service['id_service']; ?>"
                                                data-id="<?php echo $staff['emp_id']; ?>" id="editService"
                                                class="btn btn-info"><i class="fa fa-pencil"></i></button>
                                    </td>
                                </tr>


                                <?php
                            }
                        }
                        ?>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <p class="back-link">MIS được phát triển bởi<a href="https://www.pcsaini.in">nhóm 7</a></p>
        </div>
    </div>

</div>    <!--/.main-->


