<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                    <em class="fa fa-home"></em>
                </a></li>
            <li class="active">Thêm Dịch vụ</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm Dịch vụ</h1>
        </div>
    </div><!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Thêm Dịch vụ:</div>
                <div class="panel-body">
                    <div class="service-response"></div>
                    <form role="form" id="add_service" data-toggle="validator">
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label>Tên dịch vụ</label>
                                <input type="text" class="form-control" placeholder="Tên dịch vụ" id="name_service" required data-error="Nhập tên dịch vụ">
                                <div class="help-block with-errors"></div>
                            </div>

                            <div class="form-group col-lg-6">
                                <label>Loại dịch vụ</label>
                                <input type="text" class="form-control" placeholder="Loại dịch vụ" id="type_service" required data-error="Nhập loại dịch vụ">
                                <div class="help-block with-errors"></div>
                            </div>
								
                            <div class="form-group col-lg-6">
                                <label>Giá dịch vụ</label>
                                <input type="text" class="form-control" placeholder="Giá dịch vụ" id="price_service" required data-error="Nhập giá dịch vụ">
                                <div class="help-block with-errors"></div>
                            </div>
							
							<div class="form-group col-lg-6">
                                <label>Đơn vị tính</label>
                                <input type="text" class="form-control" placeholder="Đơn vị tính" id="unit_service" required data-error="Nhập Đơn vị tính">
                                <div class="help-block with-errors"></div>
                            </div>
							
							<div class="form-group col-lg-6">
                                <label>Thời gian bắt đầu sự kiện</label>
                                <input type="text" class="form-control" placeholder="dd/mm/yyyy" id="time_start" required data-error="Nhập thời gian bắt đầu sự kiện">
                                <div class="help-block with-errors"></div>
                            </div>
							
							<div class="form-group col-lg-6">
                                <label>Thời gian kết thúc sự kiện</label>
                                <input type="text" class="form-control" placeholder="dd/mm/yyyy" id="time_end" required data-error="Nhập thời gian kết thúc sự kiện">
                                <div class="help-block with-errors"></div>
                            </div>
							
							<div class="form-group col-lg-6">
                                <label>Số lượng người tham gia tối đa</label>
                                <input type="int" class="form-control" placeholder="" id="max_custom" required data-error="Nhập số lượng tham gia tối đa">
                                <div class="help-block with-errors"></div>
                            </div>

                        </div>

                        <button type="submit" class="btn btn-lg btn-primary">Submit</button>
                        <button type="reset" class="btn btn-lg btn-danger">Reset</button>
                    </form>
                </div>
            </div>
        </div>


    </div>

    <div class="row">
        <div class="col-sm-12">
            <p class="back-link">MIS được phát triển bởi <a href="https://www.pcsaini.in">nhóm 7</a></p>
        </div>
    </div>

</div>    <!--/.main-->




