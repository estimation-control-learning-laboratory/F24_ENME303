function TF = isPerfectSquare(num)
    if isInt(sqrt(num))
        TF = true;
    else
        TF = false;
    end
end