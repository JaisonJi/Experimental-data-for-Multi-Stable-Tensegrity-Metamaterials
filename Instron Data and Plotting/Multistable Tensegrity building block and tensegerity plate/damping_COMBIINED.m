close all;
clear all;
M1=xlsread('damping_test_2.csv');
figure('DefaultAxesFontSize',17,'Position',[50 50 600 480])

color.code=colormap(slanCM(160));
color.l=length(color.code);
for i=1:9
    color.index(i)=round(color.l*i/9);
    newcolors2(i,:)=color.code(color.index(i),:);
end
colororder(newcolors2);
subplot(2,1,1)
plot(M1(3:6607,3),M1(3:6607,4),'LineWidth',3);%%10
hold on
plot(M1(6610:9913,3),M1(6610:9913,4),'LineWidth',3);%%20
hold on
plot(M1(9916:12118,3),M1(9916:12118,4),'LineWidth',3);%%30
hold on
plot(M1(12121:13443,3),M1(12121:13443,4),'LineWidth',3);%%50
hold on
plot(M1(13446:14328,3),M1(13446:14328,4),'LineWidth',3);%%75
hold on
plot(M1(14331:14992,3),M1(14331:14992,4),'LineWidth',3);%%100
hold on
plot(M1(14995:15326,3),M1(14995:15326,4),'LineWidth',3);%%200
hold on
plot(M1(15498:15664,3),M1(15498:15664,4),'LineWidth',3);%%400
lgd = legend('10 mm/min','20 mm/min','30 mm/min','50 mm/min','75 mm/min','100 mm/min','200 mm/min','400 mm/min');
%title(lgd,'Loading rate=')
legend('Location','northeastoutside','FontName','Arial');
legend('boxoff');
xlabel('Displacement(mm)','FontName','Arial');
ylabel ('Reaction force(N)','FontName','Arial');
%title('Single tensegrity unit damping test under various loading rate');
axis([0 22 -1 10]);
ax=gca;
ax.FontName='Arial';

M=xlsread('testplate_20250415_1.csv');
subplot(2,1,2)
M11=M(3:6605,3);
M12=M(9:6611,4);
plot(M11,M12,'LineWidth',3);%%10
hold on
M21=(9/8.6)*M(18921:22393,3)';
M22=M(18921:22393,4)';
plot(M21,M22,'LineWidth',3);%%20
hold on
M31=M(13171:15372,3);
M32=M(13174:15375,4);
plot(M31,M32,'LineWidth',3);%%30
hold on
M41=M(15378:16683,3);
M42=M(15397:16702,4);
plot(M41,M42,'LineWidth',3);%%50
hold on
M51=M(16705:17574,3);
M52=M(16720:17589,4);
plot(M51,M52,'LineWidth',3);%%75
hold on
M61=M(17592:18237,3);
M62=M(17605:18250,4);
plot(M61,M62,'LineWidth',3);%%100
hold on
M71=(18.5/19)*M(18253:18543,3);
M72=M(18258:18548,4);
plot(M71,M72,'LineWidth',3);%%200
hold on
M81=M(18587:18918,3);
M82=M(18587:18918,4);
plot(M81,M82,'LineWidth',3);%%400
lgd = legend('10 mm/min','20 mm/min','30 mm/min','50 mm/min','75 mm/min','100 mm/min','200 mm/min','400 mm/min');
%title(lgd,'Loading rate=')
legend('Location','northeastoutside','FontName','Arial');
legend('boxoff');
xlabel('Displacement(mm)','FontName','Arial');
ylabel ('Reaction force(N)','FontName','Arial');
axis([0 22 -1 50])
yticks(0:25:50)
ax=gca;
ax.FontName='Arial';