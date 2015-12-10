using System;
using System.IO;
using System.Threading;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace MediaViewer.Models
{
    public class Picture : Media
    {
        private ImageSource _thumbnail;

        public ImageSource Thumbnail
        {
            get
            {
                if(_thumbnail == null)
                {
                    ThreadPool.QueueUserWorkItem(LoadImage);
                }

                return _thumbnail;
            }
        }

        private void LoadImage(object state)
        {
            byte[] buffer = File.ReadAllBytes(_fileInfo.FullName);
            MemoryStream mem = new MemoryStream(buffer);

            BitmapDecoder decoder = BitmapDecoder.Create(
                mem,
                BitmapCreateOptions.None,
                BitmapCacheOption.None
                );

            _thumbnail = decoder.Frames[0];

            Application.Current.Dispatcher.Invoke(
                DispatcherPriority.Normal,
                (Action)delegate { OnPropertyChanged("Thumbnail"); }
                );
        }
    }
}
