function max = arrayMax(array)
% go through the array value by value
% Store a variable of the current max
% If the value is greater than the current max, set that to be the current
% max
    numElements = length(array);
    max = array(1);
    for i = 2:numElements
        if array(i)>max
            max = array(i);
        end
    end

end