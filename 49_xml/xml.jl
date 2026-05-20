import Pkg
Pkg.activate(; temp=true)
Pkg.add("LightXML"; io=devnull)

using LightXML

function plant_to_xml(id, name, origins)
    doc = XMLDocument()
    root = create_root(doc, "plant")
    set_attribute(root, "id", string(id))
    name_el = new_child(root, "name")
    add_text(name_el, name)
    for origin in origins
        orig_el = new_child(root, "origin")
        add_text(orig_el, origin)
    end
    return doc
end

coffee_doc = plant_to_xml(27, "Coffee", ["Ethiopia", "Brazil"])
println(string(coffee_doc))

tomato_doc = plant_to_xml(81, "Tomato", ["Mexico", "California"])
println(string(tomato_doc))
