function render_template(tmpl, data)
    result = tmpl
    if data isa AbstractString
        result = replace(result, "{{.}}" => data)
    elseif data isa Number
        result = replace(result, "{{.}}" => string(data))
    elseif data isa Vector
        items = join(data, " ")
        result = replace(result, "{{.}}" => items)
    end
    return result
end

t1 = "Value: {{.}}\n"
print(render_template(t1, "some text"))
print(render_template(t1, 5))
print(render_template(t1, ["Go", "Rust", "C++", "C#"]))

t2 = "Name: {{.Name}}\n"
println(replace(t2, "{{.Name}}" => "Jane Doe"))
println(replace(t2, "{{.Name}}" => "Mickey Mouse"))

t3_yes = " yes \n"
t3_no = " no \n"
print("not empty" != "" ? t3_yes : t3_no)
print("" != "" ? t3_yes : t3_no)

t4_items = ["Go", "Rust", "C++", "C#"]
print("Range: ", join(t4_items, " "), " \n")
