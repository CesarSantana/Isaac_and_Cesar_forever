% tests the calculation of air resistance of a coin

function tests = airResistanceTest
    tests = functiontests(localfunctions);
end

function setupOnce(testCase)
    addpath(cd(cd('..'))); % add parent directory to path
end

function testZeroVelocity(testCase)
    V = [0; 0];
    area = 5;
    actSolution = airResistance(V, area);
    expSolution = [0; 0];
    verifyEqual(testCase, actSolution, expSolution);
end

function testZeroArea(testCase)
    V = [0; 10];
    area = 0;
    actSolution = airResistance(V, area);
    expSolution = [0; 0];
    verifyEqual(testCase, actSolution, expSolution);
end

% when the coin is rising, air resistance should point down
function testPosVelocity(testCase)
    V = [10; 10];
    area = 5;
    actSolution = airResistance(V, area);
    verifyLessThan(testCase, actSolution, [0; 0]);
end

% when the coin is falling, air resistance should point up
function testNegVelocity(testCase)
    V = [-10; -10];
    area = 5;
    actSolution = airResistance(V, area);
    verifyGreaterThan(testCase, actSolution, [0; 0]);
end
