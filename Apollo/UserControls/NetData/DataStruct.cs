using System.Runtime.InteropServices;

namespace Apollo
{
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    unsafe public struct DataStruct
    {
        public int trafficRate;
        public int spectrumSensing;
        public int cpudet;
        public int consteX;
        public double consteY;
        public double trafficRate0;//此处为TrafficRate备用。
    }
}