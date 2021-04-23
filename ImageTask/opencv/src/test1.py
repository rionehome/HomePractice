import cv2

img = cv2.imread('/home/ri-one/opencv/image/parrot.jpg')

cv2.imwrite('/home/ri-one/opencv/image/ReadWrite.jpg', img)