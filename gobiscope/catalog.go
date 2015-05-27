package gobiscope

import golfilesystem "github.com/abhishekkr/gol/golfilesystem"

var media_ext = []string{
	".mp4",
	".mkv",
	".flv",
	".avi",
	".mpeg",
	".wmv",
	".ogv",
	".3gp",
	".m4v",
	".flac",
	".ogg",
	".mp3",
	".aac",
	".m4a",
	".wma",
	".wav",
	".ast",
}

var MediaList = make(map[int]string)

func LoadMediaList(basePath string) {
	pathMap, err := golfilesystem.PathLsType(basePath, media_ext)
	if err != nil {
		panic("PathLsType failed!")
	}
	for pathIdx := range pathMap {
		MediaList[pathIdx] = pathMap[pathIdx]
	}
}

func MediaAvailable(mediapath string) bool {
	for _idx := range MediaList {
		if mediapath == MediaList[_idx] {
			return true
		}
	}
	return false
}
