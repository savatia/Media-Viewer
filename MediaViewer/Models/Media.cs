using System;
using System.IO;
using System.ComponentModel;

namespace MediaViewer.Models
{
    public class Media : INotifyPropertyChanged
    {
        protected FileInfo _fileInfo;
        protected Uri _uri;

        public string Name
        {
            get { return Path.GetFileNameWithoutExtension(_fileInfo.Name); }
        }

        public string Directory
        {
            get { return _fileInfo.Directory.Name;  }
        }

        public Uri Uri
        {
            get { return _uri; }
        }

        public void SetFile(FileInfo fileInfo)
        {
            _fileInfo = fileInfo;
            _uri = new Uri(_fileInfo.FullName);

            OnPropertyChanged("Name");
            OnPropertyChanged("Directory");
            OnPropertyChanged("Uri");
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            if(PropertyChanged != null)
            {
                PropertyChanged(
                    this,
                    new PropertyChangedEventArgs(propertyName)
                    );
            }
        }
    }
}
