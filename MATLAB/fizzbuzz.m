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
        end
        if mod(i,3) == 0
            string = "fizz";
            return
        end
        if mod(i,5) == 0
            string = "Buzz";
            return
        end
        string = int2str(i);
    end

    % Main
    main()
end