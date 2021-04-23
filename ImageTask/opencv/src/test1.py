import cv2

img = cv2.imread('../image/parrot.jpg')

cv2.imwrite('../image/ReadWrite.jpg', img)
