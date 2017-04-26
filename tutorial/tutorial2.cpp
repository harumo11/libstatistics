#include <iostream>
#include <vector>
#include <statistics.hpp>

using std::cout;
using std::endl;

int main(int argc, char const* argv[])
{
	libstatistics::accumulator acc;

	for (int i = 0; i < 100; i++) {
		cout << i*3.1415 << " " << endl;
		acc.add(i*3.141592);
	}
	cout << "get sum\t" << acc.getSum() << endl;
	cout << "get Standerd deviation\t" << acc.getStandardDeviation() << endl;
	acc.reset();

	std::vector<double> datas = { 2, 32, 433, 12.2, 432, 5421};
	acc.add(datas);
	cout << "get sum\t" << acc.getSum() << endl;
	cout << "get Standerd deviation\t" << acc.getStandardDeviation() << endl;

	return 0;
}
