using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.IO;

namespace Apollo
{
    class SaveAsImage
    {
        public static void ExportToImage(FrameworkElement surface)
        {
            Size size = new Size(surface.ActualWidth, surface.ActualHeight);
            RenderTargetBitmap renderBitmap = new RenderTargetBitmap((int)size.Width, (int)size.Height, 96d, 96d, PixelFormats.Pbgra32);
            renderBitmap.Render(surface);

            Microsoft.Win32.SaveFileDialog dlg = new Microsoft.Win32.SaveFileDialog();
            dlg.FileName = DateTime.Now.ToString("yyyy-M-d-H_m_s");
            string path = Environment.GetFolderPath(Environment.SpecialFolder.Desktop) + "\\WLANFolder";
            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);
            dlg.InitialDirectory = path;
            dlg.OverwritePrompt = true;
            dlg.Filter = "JPEG Image|*.jpg|Bitmap Image|*.bmp|PNG Image|*.png";
            dlg.Title = "Save an Image File";
            dlg.ShowDialog();
            dlg.RestoreDirectory = true;

            if (dlg.FileName != "")
            {
                try
                {
                    using(FileStream outStream = (System.IO.FileStream)dlg.OpenFile())
                    {
                        switch (dlg.FilterIndex)
                        {
                            case 1:
                                {
                                    JpegBitmapEncoder encoder = new JpegBitmapEncoder();
                                    encoder.Frames.Add(BitmapFrame.Create(renderBitmap));
                                    encoder.Save(outStream);
                                }
                                break;
                            case 2:
                                {
                                    BmpBitmapEncoder encoder = new BmpBitmapEncoder();
                                    encoder.Frames.Add(BitmapFrame.Create(renderBitmap));
                                    encoder.Save(outStream);
                                }
                                break;
                            case 3:
                                {
                                    PngBitmapEncoder encoder = new PngBitmapEncoder();
                                    encoder.Frames.Add(BitmapFrame.Create(renderBitmap));
                                    encoder.Save(outStream);
                                }
                                break;
                            default:
                                break;
                        }
                        System.Diagnostics.Process.Start(dlg.FileName);
                    }          
                }
                catch (ArgumentException)
                { return; }
            }
        }
    }
}
