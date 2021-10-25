module AST 

abstract type Expression end

struct Const <: Expression
    value::Int
end

struct Add <: Expression
    lhs::Expression
    rhs::Expression
end


evaluate(e::Const) = e.value
evaluate(e::Add) = evaluate(e.lhs) + evaluate(e.rhs)


end 