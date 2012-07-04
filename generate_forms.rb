# encoding: UTF-8
#Equipment,Container need autocomplete
#
#confirmed by need password confirm
#QA
#User
#Supervisor
#
# Need two language (pending)
# * Add typeahead of reject code
# * FOP Introduce 2 level form navitation
# * Add recent form quick list for OP
# * Detail, Head forms format need to support


def generate_form(dept, form, fields, detail_fields=nil)
	generate :scaffold, "#{form}#{fields.collect {|k,v| " #{k}:#{v}"}.join}"

	inject_into_file "app/models/#{form.underscore}.rb", :before => "end" do
	  "  validates :status_code, :presence => true\n"
	end if fields.has_key? :status_code

	if detail_fields.present?
		dm_name = "#{form}Detail"
		dm_row_count=detail_fields.shift[1].to_i

		generate :model, "#{dm_name} #{form.underscore}:references #{detail_fields.collect {|k,v| " #{k}:#{v}"}.join}"

		inject_into_file "app/models/#{form.underscore}.rb", :before => "end" do
	  	"  has_many :#{dm_name.underscore.pluralize}, dependent: :destroy\n" + \
	  	"  accepts_nested_attributes_for :#{dm_name.underscore.pluralize}\n" + \
	  	"  attr_accessible :#{dm_name.underscore.pluralize}_attributes\n"
		end

		inject_into_file "app/models/#{dm_name.underscore}.rb", :before => "end" do
	  	"  belongs_to :#{form.underscore}\n"
		end

		inject_into_file "app/controllers/#{form.underscore.pluralize}_controller.rb", :after => "#{form}.new\n" do
	  	"    1.upto #{dm_row_count} do |i|\n" + \
	  	"      @#{form.underscore}.#{form.underscore}_details.build\n" + \
	  	"    end\n"
		end
	end

	inject_into_file "app/views/application/_nav.html.erb", :before => "</ul><!--#{dept}-->\n" do
	  "  <li><%= link_to '#{form.titleize}', #{form.pluralize.underscore}_path -%></li>\n"
	end

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :after => '<!--Note-->' do
'<h5>Status Code: (N) Normal operation 一般作业；(SC)Shift Change 换班；(OP) MC Set Up 开机；(CD) Change device换型号；(CS) Change solder paste  换锡膏；(CC) Change component  换元器件；(MS) mount squeegee 安装刮刀；(CS) change stencil 更换钢板；(RM) Repaire M/C 修机；(PM) PM 保养。</h5>'
	end if fields.has_key? :status_code

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :device_cont, :class => 'input-small search-query', :placeholder => 'PN Device', :title => 'Type here to search PN Device' %>\n"
	end if fields.has_key? :device

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :lot_no_cont, :class => 'input-small search-query', :placeholder => 'Lot No.', :title => 'Type here to search Lot No.' %>\n"
	end if fields.has_key? :lot_no

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :reject_code_cont, :class => 'input-small search-query', :placeholder => 'Reject Code', :title => 'Type here to search Reject Code' %>\n"
	end if fields.has_key? :reject_code

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :gold_wire_no_cont, :class => 'input-medium search-query', :placeholder => 'Goldwire No.', :title => 'Type here to search Goldwire No.' %>\n"
	end if fields.has_key? :gold_wire_no

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :wafer_no_cont, :class => 'input-medium search-query', :placeholder => 'Wafer No.', :title => 'Type here to search Wafer No.' %>\n"
	end if fields.has_key? :wafer_no

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :material_no_cont, :class => 'input-medium search-query', :placeholder => 'Material No', :title => 'Type here to search Material No.' %>\n"
	end if fields.has_key? :material_no

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :batch_no_cont, :class => 'input-medium search-query', :placeholder => 'Batch No', :title => 'Type here to search Batch No.' %>\n"
	end if fields.has_key? :batch_no

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :applicant_badge_cont, :class => 'input-medium search-query', :placeholder => 'Applicant Badge', :title => 'Type here to search Applicant Badge' %>\n"
	end if fields.has_key? :applicant_badge

	inject_into_file "app/views/#{form.pluralize.underscore}/index.html.erb", :before => '  <%= f.submit :class => "btn" %>' do
"  <%= f.text_field :remark_cont, :class => 'input-small search-query', :placeholder => 'Remark', :title => 'Type here to search Remark' %>\n"
	end if fields.has_key? :remark
end

# Common form fields which almost every form will merge
common_fields = {
	:create_badge      => :string,
	:create_shift_code => :string,
	:update_badge      => :string,
	:update_shift_code => :string,
}

# Common Production Fields can be merge in production log form
common_production_fields = {
	:status_code => :string,
	:device      => :string,
	:lot_no      => :string,
	:reject_code => :string,
	:remark      => :string,
}

# generate FOP forms
#eval File.read(File.expand_path('../forms_fop.rb', __FILE__))

# generate QA forms
#eval File.read(File.expand_path('../forms_bop.rb', __FILE__))

# generate QA forms
#eval File.read(File.expand_path('../forms_top.rb', __FILE__))

# generate QA forms
#eval File.read(File.expand_path('../forms_cop.rb', __FILE__))

# generate QA forms
#eval File.read(File.expand_path('../forms_kgd.rb', __FILE__))

# generate QA forms
eval File.read(File.expand_path('../forms_qa.rb', __FILE__))

