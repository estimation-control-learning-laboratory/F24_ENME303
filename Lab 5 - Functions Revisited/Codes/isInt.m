function TF = isInt(num)
    if mod(num,1) == 0
        TF = true;
    else
        TF = false;
    end
end