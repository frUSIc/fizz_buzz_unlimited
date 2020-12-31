%{
Run with MATLAB
%}

function [] = fizzbuzz()

    % Loop
    function [] = main()
        maxNum = input("Please enter max number: ");
        for i = 1:maxNum
            disp(divisible(i))
        end
    end
    
    % Logic
    function string = divisible(i)
        if mod(i,3) == 0 && mod(i,5) == 0
            string = "fizzBuzz";
            return
        elseif mod(i,3) == 0
            string = "fizz";
            return
        elseif mod(i,5) == 0
            string = "Buzz";
            return
        else
            string = int2str(i);
        end
    end

    % Main
    main()
end