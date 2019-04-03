#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

int main(int argc, char **argv)
{
    cv::Mat mat = cv::imread("C:\\Windows\\System32\\oobe\\background.bmp");
    cv::imshow("background",mat);
    cv::waitKey();
    return 0;
}
