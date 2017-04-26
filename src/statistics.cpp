#include "../include/statistics/statistics.hpp"

/**
 * @brief A constructor 1 of 2. Set data of std::vector<double>.
 *
 * @param vector_data Input Data to be calcurated.
 */
libstatistics::accumulator::accumulator(std::vector<double> &vector_data)
{
	//Set empty data.
	this->reset();

	//Set statistics data 
	this->data = std::move(vector_data);

	//Calculate a sum value.
	for(auto&& x : this->data){
		this->sum += x;
	}

	//Caluculate a mean value.
	this->mean = this->sum / static_cast<double>(this->data.size());
}

/**
 * @brief A constructor 2 of 2. Just Declarate instance of accumulator calss.
 *
 * After this constructor, set data to be calcurated.
 */
libstatistics::accumulator::accumulator(){
	//Reset empty data.
	this->reset();
}

/**
 * @brief Reset all member attribute 
 */
void libstatistics::accumulator::reset(){
	
	//Reset private member argments
	this->sum = 0;
	this->mean = 0;
	this->data.clear();
}

/**
 * @brief A destructor.
 */
libstatistics::accumulator::~accumulator()
{

}

/**
 * @brief Get sum of the data.
 *
 * @return Sum of the data.
 */
double libstatistics::accumulator::getSum()
{
	double sumSwap = 0;

	//Calculate a sum value.
	for(auto&& x : this->data){
		sumSwap += x;
	}

	this->sum = sumSwap;

	//Return sum value.
	return this->sum;
}

/**
 * @brief Get mean of the data.
 *
 * @return Mean of the data.
 */
double libstatistics::accumulator::getMean()
{
	//Up-to-data sum value.
	this->getSum();

	//Caluculate a mean value.
	this->mean = this->sum / static_cast<double>(this->data.size());

	//Return mean value.
	return this->mean;
}

/**
 * @brief Get variance of the data.
 *
 * @return Variance of the data.
 */
double libstatistics::accumulator::getVariance()
{
	double diffSum = 0;

	//Get up-to-data mean value.
	this->getMean();

	for (auto&& x : this->data){
		diffSum += (x - this->mean) * (x - this->mean);
	}

	//Return variance value. Sigma^2.
	return diffSum / static_cast<double>(this->data.size() - 1);
}

/**
 * @brief Get standerd deviation of the data.
 *
 * @return Standerd deviation of the data.
 */
double libstatistics::accumulator::getStandardDeviation()
{
	//Return standard deviation. Sigma.
	return std::sqrt(this->getVariance());
}

/**
 * @brief Get Mediam of the data.
 *
 * @return Mediam of the data.
 */
double libstatistics::accumulator::getMediam()
{
	int mediamNumber = 0;

	//Sort medianVec vector.
	std::sort(std::begin(this->data), std::end(this->data));

	//Brunching proccesing depending on MedianVec size is even or odd.
	if (this->data.size() % 2 == 0) {
		mediamNumber = this->data.size() / 2;

		//Return median even version.
		return (this->data.at(mediamNumber) + this->data.at(mediamNumber+1)) / 2;

	} else {
		mediamNumber = (this->data.size()-1) / 2;
		mediamNumber+=1;

		//Return median odd version.
		return this->data.at(mediamNumber);
	}
}

/**
 * @brief Add date to tail of data attribute. Override 1 of 2. double version.
 *
 * @param new_data Data to be added.
 */
void libstatistics::accumulator::add(double new_data){
	//Add new data to this->data of the end.
	this->data.push_back(new_data);
}

/**
 * @brief Add data to tail of data attribute. Override 2 of 2. std::vector<double> version.
 *
 * @param new_vector_data Data(vector) to be added.
 */
void libstatistics::accumulator::add(std::vector<double> &new_vector_data){
	//Add new data to this->data of end.
	this->data.emplace_back(new_vector_data);
}
