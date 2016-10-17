#
# Defines aliases and function for media tasks.
#
# Authors:
#   Enoch Root <m.enochroot@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != darwin* ]]; then
  return 1
fi

#
# Aliases
#

#alias myip='dig +short myip.opendns.com @resolver1.opendns.com'


#   m_cmp3:  convert the audio track of a video in mp3 format
#   Note: video container format have to support this
#   -------------------------------------------------------------------
    m_cmp3() {
        ffmpeg -i $1 -acodec mp3 -vcodec copy $1.mp4;
    }

    m_cmp4() {
        ffmpeg -i $1 -c:v libx264 -preset slow -crf 22 -c:a mp3 $1.mp4;
    }
