# encoding: UTF-8
# file date 8/23/2012 by Eric

# DOC#: F1206-0002 incoming inspection report
qa_incoming_inspection_fields = {
	:part_no              => :string,
	:material_description => :string,
	:po_no                => :string,
	:supplier_lot_no      => :string,
	:material_spec        => :string,
	:receiving_date       => :date,
	:supplier             => :string,
	:iqa_inspection_date  => :date,
	:receiving_quantity   => :integer,
}
qa_incoming_inspection_detail_fields = {
	:row_count    => 7,
	:item         => :string,
	:spec         => :string,
	:data_type    => :string,
	:data1        => :float,
	:data2        => :float,
	:data3        => :float,
	:data4        => :float,
	:data5        => :float,
	:accept_or_ng => :boolean,
	:remark       => :string,
}
generate_form 'QA', 'IncomeInspectionReport',
	(qa_incoming_inspection_fields.merge common_fields), qa_incoming_inspection_detail_fields


# Doc#: 3712-02-00033 QC Package Mark Monitor Sheet
qa_qc_package_mark_monitor_fields = {
	:equipment_no             => :string,
	:device                   => :string,
	:status_code              => :string,
	:lot_no                   => :string,
	:positrol_log_monitor     => :boolean,
	:product_visual_monitor   => :boolean,
	:sample_size              => :string,
	:defect_code_qty          => :integer,
	:ink_mark_permanency_test => :boolean,
	:peeling_test             => :boolean,
}
qa_qc_package_mark_monitor_detail_fields = {
	:items     => ["Demention A","Demention B","Demention C","Demention D","Demention E"],
	:demention => :float,
}
generate_form 'QA', 'QcPackageMarkMonitor',
	(qa_qc_package_mark_monitor_fields.merge common_fields), qa_qc_package_mark_monitor_detail_fields


# Doc#: 3712-02-00034 QC Laser Cut Monitor Sheet
qa_qc_laser_cut_monitor_fields = {
	:equipment_no         => :string,
	:device               => :string,
	:status_code          => :string,
	:lot_no               => :string,
	:positrol_log_monitor => :boolean,
	:sample_size          => :string,
	:monitor_result       => :boolean,
	:defect_code          => :string,
	:defect_qty           => :integer,
	:remark               => :string,
}
qa_qc_laser_cut_monitor_detail_fields = {
	:items     => ["Demention A","Demention B","Demention C","Demention D","Demention E"],
	:dimension => :float,
}
generate_form 'QA', 'QcLaserCutMonitor',
	(qa_qc_laser_cut_monitor_fields.merge common_fields), qa_qc_laser_cut_monitor_detail_fields


# Doc#: 3712-02-00042 QC Laser Sweeping Monitor Sheet
qa_qc_laser_sweeping_monitor_fields = {
	:equipment_no         => :string,
	:device               => :string,
	:status_code          => :string,
	:lot_no               => :string,
	:positrol_log_monitor => :boolean,
	:monitor_result       => :boolean,
	:defect_code          => :string,
	:programme_monitor    => :boolean,
	:sample_size          => :string,
	:monitor_result       => :boolean,
	:defect_code          => :string,
	:defect_qty           => :integer,
}
generate_form 'QA', 'QcLaserSweepingMonitor',
	(qa_qc_laser_sweeping_monitor_fields.merge common_fields)


# Doc#: 3712-02-00034 QC Saw Singulation Monitor Sheet
qa_qc_saw_singulation_monitor_fields = {
	:equipment_no         => :string,
	:device               => :string,
	:status_code          => :string,
	:lot_no               => :string,
	:positrol_log_monitor => :boolean,
	:sample_size          => :string,
	:monitor_result       => :boolean,
	:defect_code          => :string,
	:defect_qty           => :integer,
}
generate_form 'QA', 'QcSawSingulationMonitor',
	(qa_qc_saw_singulation_monitor_fields.merge common_fields)


# Doc#: 3712-02-00130 QC Osp Product Monitor Sheet
qa_qc_osp_product_monitor_fields = {
	:lot_no                        => :string,
	:equipment_no                  => :string,
	:device                        => :string,
	:wetting_fail_ball_qty_wetting => :string,
	:imc_fail_ball_qty_imc         => :string,
	:monitor_result                => :boolean,
	:qdn_no                        => :string,
}
generate_form 'QA', 'QcOspProductMonitor',
	(qa_qc_osp_product_monitor_fields.merge common_fields)


# Doc#: 1111-02-20005 QC T-Scan Monitor Sheet
qa_qc_t_scan_monitor_fields = {
	:equipment_no    => :string,
	:device          => :string,
	:lot_no          => :string,
	:sample_size     => :string,
	:monitor_result  => :boolean,
	:defect_strip_no => :string,
	:defect_qty      => :integer,
	:remark          => :string,
}
generate_form 'QA', 'QcT-ScanMonitor',
	(qa_qc_t_scan_monitor_fields.merge common_fields)


# Doc#: 3712-01-00002 KGD QC Line Monitor Working Record
qa_qc_kgd_line_monitor_fields = {
	:equipment_no       => :string,
	:part_no            => :string,
	:work_status        => :string,
	:lot_no             => :string,
	:defect_qty         => :integer,
	:defect_description => :string,
	:wafer_id           => :string,
	:monitor_data       => :string,
	:result             => :boolean,
	:qdn_no_remark_qdn  => :string,
}
generate_form 'QA', 'QcKgdLineMonitor',
	(qa_qc_kgd_line_monitor_fields.merge common_fields)


# Doc#: 3712-02-00038 QC Labeling Monitor Sheet
qa_qc_labeling_monitor_fields = {
	:equipment_no      => :string,
	:part_no           => :string,
	:lot_no            => :string,
	:lot_qty           => :integer,
	:sample_size       => :string,
	:defect_qty        => :integer,
	:defect_code       => :string,
	:qty               => :integer,
	:qty               => :integer,
	:result            => :boolean,
	:qdn_no_remark_qdn => :string,
}
generate_form 'QA', 'QcLabelingMonitor',
	(qa_qc_labeling_monitor_fields.merge common_fields)


# Doc#: 3712-02-00184 QC Retail Fulfillment Fvi Record
qa_qc_retail_fulfillment_monitor_fields = {
	:part_no                    => :string,
	:lot_no                     => :string,
	:lot_size                   => :string,
	:sample_size                => :string,
	:defect_qty                 => :integer,
	:defect_description_and_qty => :string,
	:result                     => :boolean,
	:qdn_no_remark_qdn          => :string,
}
generate_form 'QA', 'QcRfFviMonitor',
	(qa_qc_retail_fulfillment_monitor_fields.merge common_fields)


# Doc#: 3712-02-00214 QC Retail Fulfillment shipping QA Record
qa_qc_retail_fulfillment_shipping_monitor_fields = {
	:po_no             => :string,
	:delivery_no       => :string,
	:ship_box_qty      => :integer,
	:sampled_box_qty   => :integer,
	:hu_no             => :boolean,
	:ship_to_address   => :boolean,
	:result            => :boolean,
	:qdn_no_remark_qdn => :string,
}
generate_form 'QA', 'QcRF_ShippingMonitor',
	(qa_qc_retail_fulfillment_shipping_monitor_fields.merge common_fields)

# DOC#: F1206-0002 Substrate Incoming Inspection Report
substrate_incoming_inspection_fields = {
	:part_no              => :string,
	:material_description => :string,
	:po_no                => :string,
	:supplier_lot_no      => :string,
	:material_spec        => :string,
	:receiving_date       => :date,
	:supplier             => :string,
	:iqa_inspection_date  => :date,
	:receiving_quantity   => :integer,
}
substrate_incoming_inspection_detail_fields = {
	:items => [
	"Tooling hole diameter 定位孔直径",
	"Left tooling hole diameter 左定位孔直径",
	"Strip width  总宽",
	"Strip length 总长",
	"Tooling hole center to center, Y vertical 定位孔间距 Y方向",
	"Upper tooling hole center to center: X Horizontal 上定位孔间距 X方向",
	"Lower tooling hole center to substrate edge  Y vertical 下定位孔中心到基板边缘距离 Y方向",
	"Space between left hole: Y vertical 左定位孔间距Y方向",
	"Center of left tooling hole to center of lower tooling hole :X Horizontal 左定位中心到下定位孔中心X方向距离",
	"Center of left tooling hole to center of lower tooling hole :Y vertical 左定位中心到下定位孔中心Y方向距离",
	"Space between lower hole X Horizontal下定位孔间距X方向",
	"左下定位中心到右定位孔中心X方向距离",
	"Space between right hole Y vertical 右定位孔间距Y方向",
	"Bonding finger width 焊线柱宽度",
	"Bonding finger space 焊线柱间距",
	"Molding gate width (Cu to strip edge)注胶口宽度",
	"Top fiducial mark plating bar width(X) 正面基准mark电镀线宽度",
	"Top fiducial mark plating bar width(Y) 正面基准mark电镀线宽度",
	"Bottom fiducial mark plating bar width(X) 背面基准mark电镀线宽度",
	"Bottom fiducial mark plating bar width(Y) 背面基准mark电镀线宽度",
	"S/M Shift(Top)",
	"S/M Shift(Bottom)",
	"正面定位方块偏移",
	"Substrate thickness 基板厚度"],
	:specs => [
	"1.50+/-0.05",
	"1.50+/-0.05",
	"74.0+/-0.10",
	"240.0+/-0.10",
	"70.45+/-0.05",
	"11.40+/-0.05",
	"2.00+/-0.075",
	"36.00+/-0.05",
	"5.00+/-0.05",
	"17.00+/-0.05",
	"113.00+/-0.05",
	"231.00+/-0.075",
	"57.50+/-0.05",
	"Min:0.050",
	"Min:0.025",
	"3.40+/-0.075",
	"0.150+/-0.020",
	"0.300+/-0.020",
	"0.150+/-0.020",
	"0.200+/-0.020",
	"Max :50um",
	"Max :50um",
	"Max :50um",
	"0.210+/-0.040"],
	:data1 => :float,
	:data2 => :float,
	:data3 => :float,
	:data4 => :float,
	:data5 => :float,
	:accept_or_ng => :boolean,
	:remark => :string,
}
generate_form 'QA', 'SubstrateIncomeInspect',
	(substrate_incoming_inspection_fields.merge common_fields), substrate_incoming_inspection_detail_fields




# Doc#: 3712-02-00139 KGD OQC Inspection Working Record
qa_qc_kgd_inspection_working_monitor_fields = {
	:part_no            => :string,
	:work_status        => :string,
	:lot_no             => :string,
	:equipment_no       => :string,
	:lot_qty            => :integer,
	:sample_size        => :string,
	:defect_die_qty     => :integer,
	:defect_wafer_id    => :string,
	:defect_description => :string,
	:qdn_no_remark      => :string,
}
generate_form 'QA', 'QcKgdInspectionWorkingMonitor',
	(qa_qc_kgd_inspection_working_monitor_fields.merge common_fields)


# Doc#: 3712-02-00031 QC WPT BST Inspection Record
qa_qc_wpt_bst_inspection_monitor_fields = {
	:equipment_no            => :string,
	:package                 => :string,
	:lot_no	                 => :string,
	:substrate_no            => :string,
	:location                => :string,
	:status_code             => :integer,
	:change_capillary_reason => :string,
	:result                  => :boolean,
}
generate_form 'QA', 'QcWptBstInspectionMonitor',
	(qa_qc_wpt_bst_inspection_monitor_fields.merge common_fields)


# Doc#: 3712-02-00030 FOL QC Die Bond Monitor Sheet
qa_qc_fol_die_bond_monitor_fields = {
	:equipment_no   => :string,
	:package        => :string,
	:lot_no_bd_no   => :string,
	:sample_size    => :string,
	:defect_qty     => :integer,
	:die_placement  => :integer,
	:die_rotation   => :integer,
	:die_tilt       => :integer,
	:stack_height   => :integer,
	:blt            => :integer,
	:epoxy_coverage => :string,
	:fillet_height  => :integer,
	:result         => :boolean,
	:remark         => :string,
}
generate_form 'QA', 'QcDieBondMonitor',
	(qa_qc_fol_die_bond_monitor_fields.merge common_fields)




# Doc#: 3712-02-00038 QC FVI Working Record
qa_qc_fvi_monitor_fields = {
	:device        => :string,
	:work_status   => :string,
	:part_no       => :string,
	:lot_no        => :string,
	:lot_qty       => :integer,
	:sample_size   => :string,
	:defect_qty    => :integer,
	:defect_code   => :string,
	:qty           => :integer,
	:defect_code   => :string,
	:qty           => :integer,
	:defect_code   => :string,
	:qty           => :integer,
	:result        => :boolean,
	:qdn_no_remark => :string,
}
generate_form 'QA', 'QcFviWorkingMonitor',
	(qa_qc_fvi_monitor_fields.merge common_fields)




# Doc#: 3712-02-00040 QC Packing Monitor Record
qa_qc_packing_monitor_fields = {
	:device                 => :string,
	:part_no                => :string,
	:lot_no                 => :string,
	:lot_inner_box_quantity => :integer,
	:sample_size            => :string,
	:defect_qty             => :integer,
	:defect_description_qty => :integer,
	:result                 => :boolean,
	:qdn_no_remark          => :string,
}
generate_form 'QA', 'QcPackingMonitor',
	(qa_qc_packing_monitor_fields.merge common_fields)


# Doc#: 3712-02-00116 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_general_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_general_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
    "SO# / STO# / Line#",
    "SO# / STO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
    "WO# & P/N",
    "WO# & P/N",
    "WO# & P/N",
    "Document attached out Box X of X",
    "Document attached out Box X of X",
	"Document attached out Box X of X"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A"],
	:check_items => [
	"Use barcode scanner to read each barcodes on one label",
	"Packing method",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Forwarder Label",
	"Packing list",
	"Shipping label",
	"Forwarder label",
	"Physical box qty",
	"Packing list",
	"Shipping label",
	"Physical product qty",
	"To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
	"Weight label",
	"Shipping label",
	"Inner box label",
	"Invoice",
	"Packing list",
	"C of C"],
	:criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X"],
	:check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist116',
	(out_of_box_audit_document_checklist_general_fields.merge common_fields), out_of_box_audit_document_checklist_general_detail_fields



# Doc#: 3712-02-00117 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_motorola_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_motorola_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
    "SO# / DO# / Line#",
    "SO# / DO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
    "WO# & P/N",
    "WO# & P/N",
    "WO# & P/N",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
    "Moto specific OBA check items Label format",
	"Moto specific OBA check items ID number",
	"Moto specific OBA check items P/N",
	"Moto specific OBA check items P/N",
	"Moto specific OBA check items P/N",
	"Moto specific OBA check items 4S label"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A",
	"Moto specific OBA check items Shipping Label spec",
	"Moto specific OBA check items Shipper Number on packing list",
	"Moto specific OBA check items Shipping Label spec",
	"Moto specific OBA check items Shipping Label spec",
	"Moto specific OBA check items Shipping Label spec",
    "Moto specific OBA check items 4S Label spec"],
    :check_items => [
	"Use barcode scanner to read each barcodes on one label",
	"Packing method",
    "Packing list",
    "Shipping label",
    "Packing list",
	"Shipping label",
	"Packing list",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Forwarder Label",
	"Packing list",
	"Shipping label",
	"Forwarder label",
	"Physical box qty",
	"Packing list",
	"Shipping label",
	"Physical product qty",
	"To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
	"Weight label",
	"Shipping label",
	"Inner box label",
	"Invoice",
	"Packing list",
	"C of C",
	"Moto specific OBA check items Shipping label",
	"Moto specific OBA check items Shipping label",
	"Moto specific OBA check items Shipping label",
	"Moto specific OBA check items Invoice",
	"Moto specific OBA check items Packing list",
    "Moto specific OBA check items Packing list"],
    :criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
	"Moto specific OBA check items Match",
	"Moto specific OBA check items Match",
	"Moto specific OBA check items Match",
	"Moto specific OBA check items Match",
	"Moto specific OBA check items Match",
	"Moto specific OBA check items Affix at back side of packing list"],
	:check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist117',
	(out_of_box_audit_document_checklist_motorola_fields.merge common_fields), out_of_box_audit_document_checklist_motorola_detail_fields





# Doc#: 3712-02-00118 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_nokia_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_nokia_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
	"SO# / DO# / Line#",
	"SO# / DO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
	"WO# & P/N",
	"WO# & P/N",
	"WO# & P/N",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Nokia specific OBA check items specific License Plate",
	"Nokia specific OBA check items specific Customer P/N",
	"Nokia specific OBA check items specific (1T) Traceability Number",
	"Nokia specific OBA check items specific Full carton box for Nokia shipment",
	"Nokia specific OBA check items specific Supplier Code",
	"Nokia specific OBA check items specific Country Code"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "Invoice",
    "T-Card",
    "T-Card",
    "T-Card",
    "N/A",
    "N/A",
    "N/A",
    "Nokia specific OBA check items shipping Label spec",
    "Nokia specific OBA check items shipping Label spec",
    "Nokia specific OBA check items Shipping Label spec",
    "Nokia specific OBA check items Packing spec",
    "Nokia specific OBA check items shipping Label spec",
    "Nokia specific OBA check items shipping Label spec"],
    :check_items => [
	"Use barcode scanner to read each barcodes on one label",
	"Packing method",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Forwarder Label",
	"Packing list",
	"Shipping label",
	"Forwarder label",
	"Physical box qty",
	"Packing list",
	"Shipping label",
	"Physical product qty",
	"To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
	"Weight label",
	"Shipping label",
	"Inner box label",
	"Invoice",
	"Packing list",
	"C of C",
	"Nokia specific OBA check items Shipping label",
	"Nokia specific OBA check items Shipping label",
	"Nokia specific OBA check items Shipping label",
	"Nokia specific OBA check items Physical Packing",
	"Nokia specific OBA check items Shipping label",
	"Nokia specific OBA check items Shipping label"],
	:criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
	"Nokia specific OBA check items Match",
	"Nokia specific OBA check items Match",
	"Nokia specific OBA check items If shipment is composed of cards from one lot, print the CM assigned lot number.If shipment is composed of cards from multiple lots, print 'MIXED LOAD'. No bar code is required when field is printed with 'MIXED LOAD'",
	"Nokia specific OBA check items Only full carton box can be shipped to Nokia",
	"Nokia specific OBA check items Match",
	"Nokia specific OBA check items Match"],
    :check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist118',
	(out_of_box_audit_document_checklist_nokia_fields.merge common_fields), out_of_box_audit_document_checklist_nokia_detail_fields




# Doc#: 3712-02-00119 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_semc_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
    :part_no        => :string,
    :ship_qty       => :integer,
}
out_of_box_audit_document_checklist_semc_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
    "SO# / DO# / Line#",
    "SO# / DO# / Line#",
    "PO#",
    "PO#",
    "Delivery Number",
    "Device P/N",
    "Device P/N",
    "Ship to Address",
    "Ship to Address",
    "Number of Boxes",
    "Number of Boxes",
    "Number of Boxes",
    "Number of Boxes",
    "Quantity",
    "Quantity",
    "Quantity",
    "Quantity",
    "WO# & P/N",
    "WO# & P/N",
    "WO# & P/N",
    "Document attached out Box X of X",
    "Document attached out Box X of X",
    "Document attached out Box X of X",
    "SEMC specific OBA check items Label format",
    "SEMC specific OBA check items Full carton box for SEMC hub shipment",
    "SEMC specific OBA check items Full carton box for SEMC hub shipment",
    "SEMC specific OBA check items Shipment Reference",
    "SEMC specific OBA check items SEMC P/N",
    "SEMC specific OBA check items SEMC P/N",
    "SEMC specific OBA check items SEMC P/N",
	"SEMC specific OBA check items Box ID"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A",
	"SEMC specific OBA check items Shipping Label spec",
	"SEMC specific OBA check items Packing spec",
	"SEMC specific OBA check items Packing spec",
	"SEMC specific OBA check items Shipper Number on packing list",
	"SEMC specific OBA check items Shipping Label spec",
	"SEMC specific OBA check items Shipping Label spec",
	"SEMC specific OBA check items Shipping Label spec",
	"SEMC specific OBA check items shipping Label spec"],
    :check_items => [
	"Use barcode scanner to read each barcodes on one label",
	"Packing method",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Forwarder Label",
	"Packing list",
	"Shipping label",
	"Forwarder label",
	"Physical box qty",
	"Packing list",
	"Shipping label",
	"Physical product qty",
	"To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
	"Weight label",
	"Shipping label",
	"Inner box label",
	"Invoice",
	"Packing list",
	"C of C",
	"SEMC specific OBA check items Shipping label",
	"SEMC specific OBA check items Shipping label",
	"SEMC specific OBA check items 5880pcs/box for MS Micro,600pcs/box for MS Pro Duo,7200pcs/box for Micro SD",
	"SEMC specific OBA check items Shipping label",
	"SEMC specific OBA check items Shipping label",
	"SEMC specific OBA check items Invoice",
	"SEMC specific OBA check items Packing list",
    "SEMC specific OBA check items Shipping label"],
    :criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
	"SEMC specific OBA check items Match",
	"SEMC specific OBA check items Match",
	"SEMC specific OBA check items Only full carton box can be shipped to SEMC hub",
	"SEMC specific OBA check items Match",
	"SEMC specific OBA check items Match",
	"SEMC specific OBA check items Match",
	"SEMC specific OBA check items Match",
	"SEMC specific OBA check items Match"],
    :check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist119',
	(out_of_box_audit_document_checklist_semc_fields.merge common_fields), out_of_box_audit_document_checklist_semc_detail_fields


# Doc#: 3712-02-00120 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_ssmp_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_ssmp_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
	"SO# / DO# / Line#",
	"SO# / DO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
	"WO# & P/N",
	"WO# & P/N",
	"WO# & P/N",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"SSMP specific OBA check items Bar code label",
	"SSMP specific OBA check items Bar code label",
	"SSMP specific OBA check items Lead-free Mark label",
    "SSMP specific OBA check items Lead-free Mark label",
	"SSMP specific OBA check items Plastic straps"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A",
	"SSMP specific OBA check items Bar code label spec",
	"SSMP specific OBA check items SSMP Bar code label spec",
	"SSMP specific OBA check items Lead-free mark label spec",
	"SSMP specific OBA check items Lead-free mark label spec",
    "SSMP specific OBA check items Packing WI 3755-02-70032"],
    :check_items => [
	"Use barcode scanner to read each barcodes on one label",
    "Packing method",
    "Packing list",
    "Shipping label",
    "Packing list",
    "Shipping label",
    "Packing list",
    "Packing list",
    "Shipping label",
    "Packing list",
    "Forwarder Label",
    "Packing list",
    "Shipping label",
    "Forwarder label",
    "Physical box qty",
    "Packing list",
    "Shipping label",
    "Physical product qty",
    "To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
    "Weight label",
    "Shipping label",
    "Inner box label",
    "Invoice",
    "Packing list",
    "C of C",
    "SSMP specific OBA check items Bar code label",
    "SSMP specific OBA check items Outer Carton box",
    "SSMP specific OBA check items Lead-free mark label",
	"SSMP specific OBA check items Outer Carton box",
    "SSMP specific OBA check items Actual Packing straps"],
    :criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
	"SSMP specific OBA check items Content and format match with spec",
	"SSMP specific OBA check items Bar code label on Outer carton box",
	"SSMP specific OBA check items Content and format match with spec",
	"SSMP specific OBA check items Lead-free mark label on Outer carton box",
	"SSMP specific Match"],
    :check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist120',
	(out_of_box_audit_document_checklist_ssmp_fields.merge common_fields), out_of_box_audit_document_checklist_ssmp_detail_fields



# Doc#: 3712-02-00203 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_samsung_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_samsung_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
    "SO# / DO# / Line#",
	"SO# / DO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
	"WO# & P/N",
	"WO# & P/N",
	"WO# & P/N",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Samsung specific OBA check items COO "],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A",
    "Samsung specific OBA check items Packing WI 3755-01-70001/ Appendix I"],
    :check_items => [
    "Use barcode scanner to read each barcodes on one label",
    "Packing method",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Forwarder Label",
	"Packing list",
	"Shipping label",
	"Forwarder label",
	"Physical box qty",
	"Packing list",
	"Shipping label",
	"Physical product qty",
	"To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
	"Weight label",
	"Shipping label",
	"Inner box label",
	"Invoice",
	"Packing list",
	"C of C",
    "Samsung specific OBA check items Packing list"],
     :criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
    "Samsung specific OBA check items Match"],
	:check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist203',
	(out_of_box_audit_document_checklist_samsung_fields.merge common_fields), out_of_box_audit_document_checklist_samsung_detail_fields



# Doc#: 3712-02-00179 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_tapa_reel_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_tapa_reel_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
    "SO# / DO# / Line#",
    "SO# / DO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
	"WO# & P/N",
	"WO# & P/N",
	"WO# & P/N",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Specific OBA check items Date Code"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A",
    "Specific OBA check items Packing spec"],
    :check_items => [
	"Use barcode scanner to read each barcodes on one label",
	"Packing method",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Packing list",
	"Shipping label",
	"Packing list",
	"Forwarder Label",
	"Packing list",
	"Shipping label",
	"Forwarder label",
	"Physical box qty",
	"Packing list",
	"Shipping label",
	"Physical product qty",
	"To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
	"Weight label",
	"Shipping label",
	"Inner box label",
	"Invoice",
	"Packing list",
	"C of C",
    "Specific OBA check items Inner Box Label"],
    :criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
    "Specific OBA check items Maximum 3 different date codes combined in one roll. And date code cycle can’t exceed 8 weeks"],
    :check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist179',
	(out_of_box_audit_document_checklist_tapa_reel_fields.merge common_fields), out_of_box_audit_document_checklist_tapa_reel_detail_fields




# Doc#: 3712-02-00182 Out Of Box Audit Document Checklist
out_of_box_audit_document_checklist_apple_ulga_tape_reel_fields = {
	:sampled_box_of => :integer,
	:po_no          => :string,
	:so_no_sto_no   => :string,
	:line_no        => :integer,
	:part_no        => :string,
	:ship_qty       => :integer,
}
out_of_box_audit_document_checklist_apple_ulga_tape_reel_detail_fields = {
	:items => [
	"Barcode scan",
	"Packing method",
	"SO# / DO# / Line#",
	"SO# / DO# / Line#",
	"PO#",
	"PO#",
	"Delivery Number",
	"Device P/N",
	"Device P/N",
	"Ship to Address",
	"Ship to Address",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Number of Boxes",
	"Quantity",
	"Quantity",
	"Quantity",
	"Quantity",
	"WO# & P/N",
	"WO# & P/N",
	"WO# & P/N",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Document attached out Box X of X",
	"Specific OBA check items Apple P/N",
	"Specific OBA check items Apple P/N",
    "Specific OBA check items Apple P/N",
	"Specific OBA check items Date Code"],
    :specs => [
	"Shipping label spec",
	"Packing spec",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"Invoice",
	"T-Card",
	"T-Card",
	"T-Card",
	"N/A",
	"N/A",
	"N/A",
	"Specific OBA check items Apple Label spec",
	"Specific OBA check items Apple Label spec",
	"Specific OBA check items Apple Label spec",
    "Specific OBA check items Packing spec"],
    :check_items => [
	"Use barcode scanner to read each barcodes on one label",
    "Packing method",
    "Packing list",
    "Shipping label",
    "Packing list",
    "Shipping label",
    "Packing list",
    "Packing list",
    "Shipping label",
    "Packing list",
    "Forwarder Label",
    "Packing list",
    "Shipping label",
    "Forwarder label",
    "Physical box qty",
    "Packing list",
    "Shipping label",
    "Physical product qty",
    "To partial outer box, the sum of the qty on the inner box label if match with the qty on the outer box label",
    "Weight label",
    "Shipping label",
    "Inner box label",
    "Invoice",
    "Packing list",
    "C of C",
    "Specific OBA check items Outer Box Label",
    "Specific OBA check items Inner Box Label",
	"Specific OBA check items Packing List / Invoice",
    "Specific OBA check items Inner Box Label"],
    :criterias => [
	"Barcode read out match with 'leading character + readable text'",
	"Packaging per instructions on BOM",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Match",
	"Out box X of X",
	"Out box X of X",
	"Out box X of X",
	"Specific OBA check items Match",
	"Specific OBA check items Match",
	"Specific OBA check items Match",
	"Specific OBA check items Maximum 2 different date codes combined in one roll. And date code cycle can’t exceed 8 weeks"],
    :check_list_result => :boolean,
}
generate_form 'QA', 'OobAuditChecklist182',
	(out_of_box_audit_document_checklist_apple_ulga_tape_reel_fields.merge common_fields), out_of_box_audit_document_checklist_apple_ulga_tape_reel_detail_fields
