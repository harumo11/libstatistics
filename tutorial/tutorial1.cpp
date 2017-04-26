#include <iostream>
#include <vector>
#include <statistics.hpp>

using std::cout;
using std::endl;

int main(int argc, char const* argv[])
{
	std::vector<double> v = { 200, 4.23, 0.4, 6.343335, 6.32004, 0.006, 8, 8, 10, 100.32 };
	libstatistics::accumulator acc(v);

	cout << "||| The sum = " << acc.getSum() << endl;
	cout << "||| The mean = " << acc.getMean() << endl;
	cout << "||| The variance = " << acc.getVariance() << endl;
	cout << "||| The standard deviation = " << acc.getStandardDeviation() << endl;
	cout << "||| The mediam = " << acc.getMediam() << endl;

	cout << "||| The sum = " << acc.getSum() << endl;
	for (auto x : v) {
		cout << x << " ";
	}

	return 0;
}
