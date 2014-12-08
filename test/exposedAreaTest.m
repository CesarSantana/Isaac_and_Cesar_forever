% tests for calculating the surface area
% of the quarter exposed to air resistance


function tests = exposedAreaTest
    tests = functiontests(localfunctions);
end

function setupOnce(testCase)
    addpath(cd(cd('../src'))); % add parent directory to path
    path
end

function testCompletelyExposed(testCase)
    r = 5;
    actSolution = exposedArea(r, 0);
    expSolution = pi * r ^ 2;
    verifyEqual(testCase, actSolution, expSolution);
end

function testCompletelyHidden(testCase)
    r = 5;
    actSolution = exposedArea(r, pi / 2);
    expSolution = 0;
    verifyEqual(testCase, actSolution, expSolution);
end

function testSomewhatExposed(testCase)
    r = 5;
    actSolution = exposedArea(r, pi / 4);
    verifyGreaterThan(testCase, actSolution, 0);
    verifyLessThan(testCase, actSolution, pi * r ^2);
end

function testPositiveArea(testCase)
    r = 5;
    actSolution = exposedArea(r, 3 * pi / 2);
    verifyGreaterThan(testCase, actSolution, 0);
end
