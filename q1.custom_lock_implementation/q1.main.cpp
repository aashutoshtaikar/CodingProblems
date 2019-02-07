/*1) custom_lock Test
*/

#include <iostream>
#include <thread>
#include <mutex>
#include "q1.custom_lock.h"


std::mutex mtx;		//mutex1
int sharedVar = 0;

void foo(){
	printf("starting thread %d \n", std::this_thread::get_id());
		//set speed here to check race conditions

	custom_locks::lock_guard<std::mutex> lg_1(mtx);
	sharedVar++;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	printf("running locked section from thread:%d, sharedVar:%d  \n", std::this_thread::get_id(), sharedVar);
}


int main() {
while(true){
	std::thread thread1(foo);
	std::thread thread2(foo);
	std::thread thread3(foo);

	thread1.join();
	thread2.join();
	thread3.join();

	std::cout << "\nfinished---press Ctrl^C to exit---\n\n";
	}
}
