function max = arrayMax(array)
    numElements = length(array);
    max = array(1);
    for i=2:numElements
        if array(i)>max
            max = array(i);
        end
    end
end
