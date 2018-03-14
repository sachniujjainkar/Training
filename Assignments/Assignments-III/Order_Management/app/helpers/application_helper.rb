module ApplicationHelper
	#@@form = nil
	def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def set_form_object(form)
    @form ||= form
  	
  end
  def get_builder
  	byebug
  	new_object = @form.object.send('line_items').klass.new
  	
    id = new_object.object_id
    fields = @form.fields_for('line_items', new_object, child_index: id) do |builder|
      return builder
    end
  	
  end
  
end
