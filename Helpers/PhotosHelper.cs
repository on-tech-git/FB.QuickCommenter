using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace FB.QuickCommenter.Helpers
{
    public static class PhotosHelper
    {
        private const string BaseDirName = "photos";
        public static List<string> GetPhotos()
        {
            var f = SelectPhotosFolder();
            var filePath = Path.Combine(f, "photos.txt");
            if (!File.Exists(filePath))
                throw new FileNotFoundException("Не найден файл photos.txt!");
            return File.ReadAllLines(filePath).ToList();
        }

        private static string SelectPhotosFolder()
        {
            Console.WriteLine("Выберите папку с фотографиями:");
            int i = 1;
            var cmntfs = Directory.EnumerateDirectories(BaseDirName).ToList();
            foreach (var f in cmntfs)
            {
                Console.WriteLine($"{i}.{Path.GetFileName(f)}");
                i++;
            }
            Console.Write("Ваш выбор:");
            var index = int.Parse(Console.ReadLine()) - 1;
            return cmntfs[index];
        }
    }
}


